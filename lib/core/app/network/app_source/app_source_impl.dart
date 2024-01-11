part of 'app_source.dart';

class AppSourceImpl implements AppSource {
  final AppServiceClient _appServiceClient;

  AppSourceImpl({required AppServiceClient appServiceClient})
      : _appServiceClient = appServiceClient;

  @override
  Future<DependencyRM> getDependencies() async {
    return await _appServiceClient.getDependencies();
  }

  @override
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
    return _appServiceClient.register(
      firstName,
      lastName,
      about,
      tags,
      favoriteSocialMedia,
      salary,
      email,
      password,
      confirmPassword,
      birthDate,
      gender,
      type,
      avatar: avatar,
    );
  }

  @override
  Future<LoginRM> login({required Map<String, dynamic> data}) async {
    return await _appServiceClient.login(data);
  }

  @override
  Future<CountryModel> countries({
    required int page,
  }) async {
    return await _appServiceClient.countries(
      page,
    );
  }

  @override
  Future<ServiceModel> popularServices() async {
    return await _appServiceClient.popularServices();
  }

  @override
  Future<ServiceModel> services() async {
    return await _appServiceClient.services();
  }

  @override
  Future<WhoIAmModel> whoAmI() async {
    return await _appServiceClient.whoAmI();
  }
}
