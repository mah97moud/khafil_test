part of 'countries_cubit.dart';

sealed class CountriesState extends Equatable {
  const CountriesState();

  @override
  List<Object> get props => [];
}

final class CountriesInitial extends CountriesState {
  const CountriesInitial();
}

final class CountriesLoading extends CountriesState {
  const CountriesLoading();
}

final class CountriesSuccess extends CountriesState {
  final List<Country> countries;

  const CountriesSuccess({
    required this.countries,
  });

  @override
  List<Object> get props => [countries];
}

final class CountriesFailure extends CountriesState {
  final String message;

  const CountriesFailure({
    required this.message,
  });

  @override
  List<Object> get props => [message];
}
