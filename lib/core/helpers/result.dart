import 'package:equatable/equatable.dart';

sealed class Result<S, E extends Exception> extends Equatable {
  const Result();
}

final class Success<S, E extends Exception> extends Result<S, E> {
  final S data;

  const Success({required this.data});

  @override
  List<Object?> get props => [data];
}

final class Failure<S, E extends Exception> extends Result<S, E> {
  final E error;
  final String message;

  const Failure({required this.error, required this.message});

  @override
  List<Object?> get props => [error, message];
}

extension ResultEx<S, E extends Exception> on Result<S, E> {
  bool get isSuccess => this is Success<S, E>;
  bool get isFailure => this is Failure<S, E>;

  S? get data => isSuccess ? (this as Success<S, E>).data : null;

  E? get error => isFailure ? (this as Failure<S, E>).error : null;

  String? get message => isFailure ? (this as Failure<S, E>).message : null;

  void when({
    required void Function(S data) success,
    required void Function(E error, String message) failure,
  }) {
    return switch (this) {
      Success(data: final data) => success(data),
      Failure(error: final error, message: final message) =>
        failure(error, message),
    };
  }
}
