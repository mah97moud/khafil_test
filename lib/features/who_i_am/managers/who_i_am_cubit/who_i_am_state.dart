part of 'who_i_am_cubit.dart';

sealed class WhoIAmState extends Equatable {
  const WhoIAmState();

  @override
  List<Object> get props => [];
}

final class WhoIAmInitial extends WhoIAmState {
  const WhoIAmInitial();
}

final class WhoIAmLoading extends WhoIAmState {
  const WhoIAmLoading();
}

final class WhoIAmLoaded extends WhoIAmState {
  final WhoIAm whoIAm;

  const WhoIAmLoaded({required this.whoIAm});

  @override
  List<Object> get props => [whoIAm];
}

final class WhoIAmFailure extends WhoIAmState {
  final String message;

  const WhoIAmFailure({required this.message});

  @override
  List<Object> get props => [message];
}
