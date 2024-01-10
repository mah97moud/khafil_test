// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'register_cubit.dart';

class RegisterState extends Equatable {
  const RegisterState({
    required this.securePassword,
    required this.secureConfirmPassword,
    required this.submissionStatus,
    required this.error,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    required this.confirmPassword,
    required this.userType,
  });

  final Name firstName;
  final Name lastName;
  final Email email;
  final Password password;
  final bool? securePassword;
  final PasswordConfirmation confirmPassword;
  final bool? secureConfirmPassword;
  final int userType;
  final SubmissionStatus? submissionStatus;
  final String? error;

  factory RegisterState.initial() {
    return const RegisterState(
      firstName: Name.unValidated(),
      lastName: Name.unValidated(),
      email: Email.unValidated(),
      password: Password.unValidated(),
      securePassword: true,
      confirmPassword: PasswordConfirmation.unValidated(),
      secureConfirmPassword: true,
      userType: -1,
      submissionStatus: SubmissionStatus.idle,
      error: '',
    );
  }

  @override
  List<Object?> get props => [
        firstName,
        lastName,
        email,
        password,
        securePassword,
        confirmPassword,
        secureConfirmPassword,
        userType,
        submissionStatus,
      ];

  RegisterState copyWith({
    Name? firstName,
    Name? lastName,
    Email? email,
    Password? password,
    bool? securePassword,
    PasswordConfirmation? confirmPassword,
    bool? secureConfirmPassword,
    int? userType,
    SubmissionStatus? submissionStatus,
    String? error,
  }) {
    return RegisterState(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      password: password ?? this.password,
      securePassword: securePassword ?? this.securePassword,
      confirmPassword: confirmPassword ?? this.confirmPassword,
      secureConfirmPassword: secureConfirmPassword ?? this.secureConfirmPassword,
      userType: userType ?? this.userType,
      submissionStatus: submissionStatus ?? SubmissionStatus.idle,
      error: error,
    );
  }
}

enum SubmissionStatus {
  idle,
  inProgress,
  success,
  error,
}
