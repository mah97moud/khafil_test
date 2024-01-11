part of 'services_cubit.dart';

sealed class ServicesState extends Equatable {
  const ServicesState();

  @override
  List<Object> get props => [];
}

final class ServicesInitial extends ServicesState {
  const ServicesInitial();
}

final class ServicesLoading extends ServicesState {
  const ServicesLoading();
}

final class ServicesLoaded extends ServicesState {
  final List<Service> data;

  const ServicesLoaded({required this.data});

  @override
  List<Object> get props => [data];
}

final class ServicesError extends ServicesState {
  final String error;

  const ServicesError({required this.error});

  @override
  List<Object> get props => [error];
}
