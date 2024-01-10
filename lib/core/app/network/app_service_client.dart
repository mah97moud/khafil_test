import 'package:dio/dio.dart';
import 'package:khafil_test/core/app/network/end_points.dart';
import 'package:retrofit/retrofit.dart';

import '../../../features/login/data/responses/login_r_m/login_r_m.dart';
import '../data/remote_models/dependency_r_m/dependency_r_m.dart';
import 'dio_factory.dart';

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
  @FormUrlEncoded()
  Future<String> register(
    @Field("first_name") String firstName,
    @Field("last_name") String lastName,
    @Field("about") String about,
    @Field("tags") List<int> tags,
    @Field("favorite_social_media") List<String> favoriteSocialMedia,
    @Field("salary") int salary,
    @Field("email") String email,
    @Field("password") String password,
    @Field("password_confirmation") String confirmPassword,
    @Field("birth_date") String birthDate,
    @Field("gender") int gender,
    @Field("type") int type,
    @Field("avatar") Part avatar,
  );

  @POST(EndPoints.login)
  Future<LoginRM> login(
    @Body() Map<String, dynamic> data,
  );
}
