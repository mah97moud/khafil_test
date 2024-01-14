import 'dart:io';

import 'package:flutter/material.dart';
import 'package:khafil_test/core/app/network/register_error/register_error.dart';

import '../../../../features/home/data/models/country_model/country_model.dart';
import '../../../../features/login/data/responses/login_r_m/login_r_m.dart';
import '../../../../features/services/data/models/service_model/service_model.dart';
import '../../../../features/who_i_am/data/model/who_i_am_model/who_i_am_model.dart';
import '../../data/remote_models/dependency_r_m/dependency_r_m.dart';
import '../app_service_client.dart';

part 'app_source_impl.dart';

abstract class AppSource {
  Future<DependencyRM> getDependencies();

  Future<RegisterError> register({
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

  Future<LoginRM> login({
    required Map<String, dynamic> data,
  });

  Future<CountryModel> countries({
    required int page,
  });

  Future<ServiceModel> services();

  Future<ServiceModel> popularServices();

  Future<WhoIAmModel> whoAmI();
}
