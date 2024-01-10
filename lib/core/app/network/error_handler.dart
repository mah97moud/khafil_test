import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../resources/app_strings.dart';
import 'dio_failure.dart';

class ErrorHandler {
  late final DioFailure dioFailure;

  ErrorHandler.handle(dynamic error) {
    if (error is DioException) {
      dioFailure = _handleError(error);
    } else {
      dioFailure = DataSource.unknown.toDioFailure;
    }
  }

  DioFailure _handleError(DioException dioException) {
    final dioType = dioException.type;

    return switch (dioType) {
      DioExceptionType.connectionTimeout =>
        DataSource.connectTimeout.toDioFailure,
      DioExceptionType.sendTimeout => DataSource.sendTimeout.toDioFailure,
      DioExceptionType.receiveTimeout => DataSource.receiveTimeout.toDioFailure,
      DioExceptionType.badCertificate => DataSource.badRequest.toDioFailure,
      DioExceptionType.badResponse => _badResponse(dioException.response),
      DioExceptionType.cancel => DataSource.cacheError.toDioFailure,
      DioExceptionType.connectionError =>
        DataSource.noInternetConnection.toDioFailure,
      DioExceptionType.unknown => DataSource.unknown.toDioFailure,
    };
  }

  DioFailure _badResponse(Response? response) {
    final data = response?.data as Map<String, dynamic>?;
    final code = response?.statusCode;

    if (code != null && data != null) {
      debugPrint('Current Error : $data');
      final error = data.containsKey('error')
          ? data['error']['message']
          : data['message'];
      final errors = (data.containsKey('errors') ? data['errors'] : {})
          as Map<String, dynamic>;

      final emailErrors = errors.containsKey('email') ? errors['email'] : [];
      final emailError = emailErrors.isNotEmpty ? '\n${emailErrors.first}' : '';

      debugPrint('Current Error : message $error');
      if (code == 422) {
        return DioFailure(
          statusCode: code,
          message: '$error $emailError',
        );
      }

// {
// 	"message": "The given data was invalid.",
// 	"errors": {
// 		"email": [
// 			"القيمة المحددة البريد الإلكترونى غير موجودة."
// 		]
// 	}
// }
      return DioFailure(
        statusCode: code,
        message: message,
      );
    }
    return DataSource.badRequest.toDioFailure;
  }
}

extension ErrorHandlerEx on ErrorHandler {
  String get message => dioFailure.message;
  int get statusCode => dioFailure.statusCode;
}

class NoInternetConnectionEx implements Exception {
  NoInternetConnectionEx(this.message);

  final String message;
}

enum DataSource {
  success,
  noContent,
  invalidateCredential,
  badRequest,
  forbidden,
  unauthorized,
  notFound,
  internalServerError,
  connectTimeout,
  receiveTimeout,
  sendTimeout,
  cacheError,
  noInternetConnection,
  unknown,
}

extension DataSourceEx on DataSource {
  DioFailure get toDioFailure {
    return switch (this) {
      DataSource.success => DioFailure(
          statusCode: ResponseCode.success,
          message: ResponseMessage.success,
        ),
      DataSource.invalidateCredential => DioFailure(
          statusCode: ResponseCode.invalidateCredential,
          message: ResponseMessage.invalidateCredential,
        ),
      DataSource.noContent => DioFailure(
          statusCode: ResponseCode.noContent,
          message: ResponseMessage.noContent,
        ),
      DataSource.badRequest => DioFailure(
          statusCode: ResponseCode.badRequest,
          message: ResponseMessage.badRequest,
        ),
      DataSource.forbidden => DioFailure(
          statusCode: ResponseCode.forbidden,
          message: ResponseMessage.forbidden,
        ),
      DataSource.unauthorized => DioFailure(
          statusCode: ResponseCode.unauthorized,
          message: ResponseMessage.unauthorized,
        ),
      DataSource.notFound => DioFailure(
          statusCode: ResponseCode.noFound,
          message: ResponseMessage.noFound,
        ),
      DataSource.internalServerError => DioFailure(
          statusCode: ResponseCode.internalServerError,
          message: ResponseMessage.internalServerError,
        ),
      DataSource.connectTimeout => DioFailure(
          statusCode: ResponseCode.connectTimeOut,
          message: ResponseMessage.connectTimeOut,
        ),
      DataSource.receiveTimeout => DioFailure(
          statusCode: ResponseCode.receiveTimeOut,
          message: ResponseMessage.receiveTimeOut,
        ),
      DataSource.sendTimeout => DioFailure(
          statusCode: ResponseCode.sendTimeOut,
          message: ResponseMessage.sendTimeOut,
        ),
      DataSource.cacheError => DioFailure(
          statusCode: ResponseCode.cacheError,
          message: ResponseMessage.cacheError,
        ),
      DataSource.noInternetConnection => DioFailure(
          statusCode: ResponseCode.noInternetConnection,
          message: ResponseMessage.noInternetConnection,
        ),
      DataSource.unknown => DioFailure(
          statusCode: ResponseCode.unknown,
          message: ResponseMessage.unknown,
        ),
    };
  }
}

class ResponseCode {
  ResponseCode._();

  static const int success = 200;
  static const int noContent = 201; // success with no data
  static const int badRequest = 400; // failure , Api reject request
  static const int forbidden = 403; // Api reject request
  static const int unauthorized = 401; // failure, user unauthorized
  static const int noFound = 404; // source not found
  static const int invalidateCredential = 422; // source not found
  static const int internalServerError = 500; // failure, crash in server side

  /// local status code
  static const int connectTimeOut = -1;
  static const int cancel = -2;
  static const int receiveTimeOut = -3;
  static const int sendTimeOut = -4;
  static const int cacheError = -5;
  static const int noInternetConnection = -6;
  static const int unknown = -7;
}

class ResponseMessage {
  ResponseMessage._();

  static const String success = AppStrings.success;
  static const String noContent = AppStrings.success; // success with no data
  static const String badRequest =
      AppStrings.badRequest; // failure , Api reject request
  static const String forbidden = AppStrings.forbidden; // Api reject request
  static const String unauthorized =
      AppStrings.unAuthorized; // failure, user unauthorized
  static const String noFound = AppStrings.noFound; // source not found
  static const String invalidateCredential =
      AppStrings.invalidateCredential; // source not found
  static const String internalServerError =
      AppStrings.genericError; // failure, crash in server side

  /// local status code
  static const String connectTimeOut = AppStrings.timeOut;
  static const String cancel = AppStrings.cancel;
  static const String receiveTimeOut = AppStrings.timeOut;
  static const String sendTimeOut = AppStrings.timeOut;
  static const String cacheError = AppStrings.cacheError;
  static const String noInternetConnection = AppStrings.noInternetConnection;
  static const String unknown = AppStrings.genericError;
}

class ApiInternalStatus {
  static const int success = 0;
  static const int failure = 1;
}
