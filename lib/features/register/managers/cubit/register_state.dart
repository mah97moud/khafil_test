// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'register_cubit.dart';

class RegisterState extends Equatable {
  const RegisterState({
    required this.submissionStatus,
    required this.error,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    required this.confirmPassword,
    required this.userType,
  });

  final FirstName firstName;
  final String lastName;
  final String email;
  final String password;
  final String confirmPassword;
  final int userType;
  final SubmissionStatus? submissionStatus;
  final String? error;

  factory RegisterState.initial() {
    return const RegisterState(
      firstName: FirstName.unValidated(),
      lastName: '',
      email: '',
      password: '',
      confirmPassword: '',
      userType: 0,
      submissionStatus: SubmissionStatus.initial,
      error: '',
    );
  }

  @override
  List<Object> get props => [
        firstName,
        lastName,
        email,
        password,
        confirmPassword,
        userType,
      ];

  RegisterState copyWith({
    FirstName? firstName,
    String? lastName,
    String? email,
    String? password,
    String? confirmPassword,
    int? userType,
    SubmissionStatus? submissionStatus,
    String? error,
  }) {
    return RegisterState(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      password: password ?? this.password,
      confirmPassword: confirmPassword ?? this.confirmPassword,
      userType: userType ?? this.userType,
      submissionStatus: submissionStatus ?? this.submissionStatus,
      error: error,
    );
  }
}

enum SubmissionStatus {
  initial,
  submitting,
  success,
  error,
}
