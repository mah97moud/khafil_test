part of 'login_cubit.dart';

class LoginState extends Equatable {
  const LoginState({
    required this.email,
    required this.password,
    required this.securePassword,
    required this.status,
    required this.message,
    this.rememberMe = false,
  });

  final Email email;
  final Password password;
  final bool? securePassword;
  final LoginStatus status;
  final String? message;
  final bool rememberMe;

  factory LoginState.initial() {
    return const LoginState(
      email: Email.unValidated(),
      password: Password.unValidated(),
      securePassword: true,
      status: LoginStatus.idle,
      message: null,
      rememberMe: false,
    );
  }

  LoginState copyWith({
    Email? email,
    Password? password,
    bool? securePassword,
    LoginStatus? status,
    String? message,
    bool? rememberMe,
  }) {
    return LoginState(
      email: email ?? this.email,
      password: password ?? this.password,
      securePassword: securePassword ?? this.securePassword,
      status: status ?? LoginStatus.idle,
      message: message,
      rememberMe: rememberMe ?? this.rememberMe,
    );
  }

  @override
  List<Object?> get props => [
        email,
        password,
        securePassword,
        status,
        message,
        rememberMe,
      ];
}

enum LoginStatus {
  idle,
  inProgress,
  success,
  error,
}
