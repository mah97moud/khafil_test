part of 'popular_services_cubit.dart';

sealed class PopularServicesState extends Equatable {
  const PopularServicesState();

  @override
  List<Object> get props => [];
}

final class PopularServicesInitial extends PopularServicesState {
  const PopularServicesInitial();
}

final class PopularServicesLoading extends PopularServicesState {
  const PopularServicesLoading();
}

final class PopularServicesLoaded extends PopularServicesState {
  final List<Service> data;

  const PopularServicesLoaded({required this.data});

  @override
  List<Object> get props => [data];
}

final class PopularServicesError extends PopularServicesState {
  final String error;

  const PopularServicesError({required this.error});

  @override
  List<Object> get props => [error];
}
