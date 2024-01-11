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
  Future<String> register({
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
    Part? avatar,
  }) {
    // TODO: implement register
    throw UnimplementedError();
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
}
