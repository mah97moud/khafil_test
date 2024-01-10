import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:khafil_test/core/app/data/models/dependency_model/social_media.dart';
import 'package:khafil_test/core/app/network/app_source/app_source.dart';
import 'package:khafil_test/core/app/network/repository/app_repo.dart';
import 'package:khafil_test/core/app/network/repository/repository.dart';
import 'package:khafil_test/core/helpers/result.dart';
import 'package:khafil_test/features/login/login_repo/login_repo.dart';

import 'data/models/dependency_model/tag.dart';
import 'data/models/dependency_model/type.dart';
import 'network/app_service_client.dart';
import 'network/dio_factory.dart';
import 'network/network_info.dart';

final di = GetIt.instance..allowReassignment = true;

List<SocialMedia> socialMedia = [];
List<TypeModel> types = [];
List<TagModel> tags = [];

Future<void> initDI() async {
  di.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImpl(
      internetConnectionChecker: InternetConnectionChecker(),
    ),
  );

  di.registerFactory<DioFactory>(
    () => const DioFactory(),
  );

  var dioFactory = di<DioFactory>();
  final dio = await dioFactory.dio;

  di.registerFactory<AppServiceClient>(
    () => AppServiceClient(dio),
  );

  di.registerFactory<AppSource>(
    () => AppSourceImpl(
      appServiceClient: di(),
    ),
  );

  di.registerFactory<Repository>(
    () => AppRepo(appSource: di(), networkInfo: di()),
  );
  di.registerFactory<LoginRepo>(
    () => LoginRepo(appSource: di(), networkInfo: di()),
  );

  await getDependencies();
}

Future<void> getDependencies() async {
  final repository = di<Repository>();

  final result = await repository.getDependencies();

  result.when(
    success: (data) {
      socialMedia = data.data.socialMedia;
      types = data.data.types;
      tags = data.data.tags;
    },
    failure: (ex, message) {
      debugPrint('''Error : $ex \n Message : $message''');
    },
  );
}
