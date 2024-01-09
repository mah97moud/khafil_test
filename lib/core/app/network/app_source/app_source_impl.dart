part of 'app_source.dart';

class AppSourceImpl implements AppSource {
  final AppServiceClient _appServiceClient;

  AppSourceImpl({required AppServiceClient appServiceClient})
      : _appServiceClient = appServiceClient;

  @override
  Future<DependencyRM> getDependencies() async {
    return await _appServiceClient.getDependencies();
  }
}
