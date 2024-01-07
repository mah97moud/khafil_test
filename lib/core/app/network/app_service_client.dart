import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

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


}
