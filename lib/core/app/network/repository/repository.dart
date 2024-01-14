import 'dart:io';

import 'package:khafil_test/core/app/data/models/dependency_model/dependency_model.dart';
import 'package:khafil_test/features/home/data/models/country_model/datum.dart';

import '../../../../features/login/data/models/login_model/login_model.dart';
import '../../../../features/services/data/models/service_model/datum.dart';
import '../../../../features/who_i_am/data/model/who_i_am_model/data.dart';
import '../../../helpers/result.dart';
import '../register_error/register_error.dart';

abstract class Repository {
  Future<Result<DependencyModel, Exception>> getDependencies() {
    throw UnimplementedError();
  }

  Future<Result<RegisterError, Exception>> register({
    required String firstName,
    required String lastName,
    required String about,
    required List<int> tags,
    required List<String> favoriteSocialMedia,
    required int salary,
    required String email,
    required String password,
    required String confirmPassword,
    required String birthDate,
    required int gender,
    required int type,
    File? avatar,

  
  }) {
    throw UnimplementedError();
  }

  Future<Result<LoginModel, Exception>> login({
    required Map<String, dynamic> data,
  }) {
    throw UnimplementedError();
  }

  Future<Result<List<Country>, Exception>> countries({
    required int page,
  }) {
    throw UnimplementedError();
  }

  Future<Result<List<Service>, Exception>> services() {
    throw UnimplementedError();
  }

  Future<Result<List<Service>, Exception>> popularServices() {
    throw UnimplementedError();
  }

  Future<Result<WhoIAm, Exception>> whoAmI() {
    throw UnimplementedError();
  }
}
