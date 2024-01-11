import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:khafil_test/core/helpers/result.dart';
import 'package:khafil_test/features/home/repository/home_repo.dart';

import '../../data/models/country_model/datum.dart';

part 'countries_state.dart';

class CountriesCubit extends Cubit<CountriesState> {
  CountriesCubit(this._repo) : super(const CountriesInitial());

  final HomeRepo _repo;

  Future<void> getCountries({
    int page = 1,
  }) async {
    emit(const CountriesLoading());
    final result = await _repo.countries(
      page: page,
    );
    result.when(
      success: (countries) {
        emit(CountriesSuccess(countries: countries));
      },
      failure: (error, message) {
        emit(CountriesFailure(message: message));
      },
    );
  }
}
