import 'package:dio/dio.dart';
import 'package:khafil_test/core/helpers/secure_storage_service.dart';

const String appJson = 'application/json';

const String contentType = 'Content-Type';
const String accept = 'Accept';
const String acceptAll = '*/*';
const String authorization = 'Authorization';
const String contentTypeValue = 'application/json';
const String acceptValue = 'application/json';

const String baseUrl = 'https://test.kafiil.com/';

class DioFactory {
  const DioFactory();
   

  Future<Dio> get dio async {
    final dio = Dio();

    final user = await SecureStorageService.getUserModel;
    final token = user?.accessToken;
   

    final Map<String, dynamic> headers = {
      contentType: appJson,
      accept: appJson,
    };

    dio.options = BaseOptions(
      baseUrl: baseUrl,
      headers: headers,
      receiveDataWhenStatusError: true,
      followRedirects: false,
    );
     if (token != null) {
      dio.options.headers[authorization] = 'Bearer $token';
    }

    // if (!kReleaseMode) {
    //   dio.interceptors.add(LogInterceptor(
    //     responseBody: true,
    //     requestBody: true,
    //   ));
    // }

    return dio;
  }
}
