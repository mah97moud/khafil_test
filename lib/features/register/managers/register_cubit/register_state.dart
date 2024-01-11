// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'register_cubit.dart';

class RegisterState extends Equatable {
  const RegisterState( {
    required this.stepperStatus,
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
    this.avatar,
    required this.about,
    required this.salary,
    required this.date,
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
  final StepperStatus? stepperStatus;

  final File? avatar;
  final About about;
  final int salary;
  final String date;

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
      stepperStatus: StepperStatus.idle,
      avatar: null,
      about: About.unValidated(),
      salary: 100,
      date: '',
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
        stepperStatus,
        avatar,
        about,
        salary,
        date,
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
    StepperStatus? stepperStatus,
    File? avatar,
    About? about,
    int? salary,
    String? date,
  }) {
    return RegisterState(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      password: password ?? this.password,
      securePassword: securePassword ?? this.securePassword,
      confirmPassword: confirmPassword ?? this.confirmPassword,
      secureConfirmPassword:
          secureConfirmPassword ?? this.secureConfirmPassword,
      userType: userType ?? this.userType,
      submissionStatus: submissionStatus ?? SubmissionStatus.idle,
      error: error,
      stepperStatus: stepperStatus ?? StepperStatus.idle,
      avatar: avatar ?? this.avatar,
      about: about ?? this.about,
      salary: salary ?? this.salary,
      date: date ?? this.date,
    );
  }
}

enum SubmissionStatus {
  idle,
  validatingForm,
  valid,
  inValid,
  inProgress,
  success,
  error,
}

enum StepperStatus {
  idle,
  next,
}
