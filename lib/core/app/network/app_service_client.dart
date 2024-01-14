import 'dart:io';

import 'package:dio/dio.dart';
import 'package:khafil_test/core/app/network/end_points.dart';
import 'package:khafil_test/features/home/data/models/country_model/country_model.dart';
import 'package:khafil_test/features/services/data/models/service_model/service_model.dart';
import 'package:retrofit/retrofit.dart';

import '../../../features/login/data/responses/login_r_m/login_r_m.dart';
import '../../../features/who_i_am/data/model/who_i_am_model/who_i_am_model.dart';
import '../data/remote_models/dependency_r_m/dependency_r_m.dart';
import 'dio_factory.dart';
import 'register_error/register_error.dart';

part 'app_service_client.g.dart';

@RestApi(
  baseUrl: baseUrl,
)
abstract class AppServiceClient {
  factory AppServiceClient(
    Dio dio, {
    String baseUrl,
  }) = _AppServiceClient;

  @GET(EndPoints.dependencies)
  Future<DependencyRM> getDependencies();

  @POST(EndPoints.register)
  @MultiPart()
  Future<RegisterError> register(
    @Part(name: "first_name") String firstName,
    @Part(name: "last_name") String lastName,
    @Part(name: "about") String about,
    @Part(name: 'tags[]') List<String> tags,
    @Part(name: 'favorite_social_media[]') List<String> favoriteSocialMedia,
    @Part(name: "salary") int salary,
    @Part(name: "email") String email,
    @Part(name: "password") String password,
    @Part(name: "password_confirmation") String confirmPassword,
    @Part(name: "birth_date") String birthDate,
    @Part(name: "gender") int gender,
    @Part(name: "type") int type, {
    @Part(name: "avatar") File? avatar,
  });

  @POST(EndPoints.login)
  Future<LoginRM> login(
    @Body() Map<String, dynamic> data,
  );

  @GET(EndPoints.country)
  Future<CountryModel> countries(
    @Query("page") int page,
  );

  @GET(EndPoints.service)
  Future<ServiceModel> services();

  @GET(EndPoints.popularService)
  Future<ServiceModel> popularServices();

  @GET(EndPoints.whoAmI)
  Future<WhoIAmModel> whoAmI();
}
