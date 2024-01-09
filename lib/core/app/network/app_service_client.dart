import 'package:dio/dio.dart';
import 'package:khafil_test/core/app/network/end_points.dart';
import 'package:retrofit/retrofit.dart';

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
}
