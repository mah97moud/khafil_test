import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'network/app_service_client.dart';
import 'network/dio_factory.dart';
import 'network/network_info.dart';

final di = GetIt.instance..allowReassignment = true;

Future<void> initDI() async {
  di.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImpl(
      internetConnectionChecker: InternetConnectionChecker(),
    ),
  );

  di.registerFactory<DioFactory>(
    () => const DioFactory(),
  );

  di.registerFactory<NetworkInfo>(
    () => NetworkInfoImpl(
      internetConnectionChecker: InternetConnectionChecker(),
    ),
  );

  var dioFactory = di<DioFactory>();
  final dio = await dioFactory.dio;

  di.registerFactory<AppServiceClient>(
    () => AppServiceClient(dio),
  );

}
