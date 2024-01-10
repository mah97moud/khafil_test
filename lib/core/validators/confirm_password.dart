import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:khafil_test/core/validators/password.dart';

class PasswordConfirmation
    extends FormzInput<String, PasswordConfirmationValidationError>
    with EquatableMixin {
  const PasswordConfirmation.unValidated([String value = ''])
      : password = const Password.unValidated(),
        super.pure(value);

  const PasswordConfirmation.validated(String value, {required this.password})
      : super.dirty(value);

  final Password password;

  @override
  PasswordConfirmationValidationError? validator(String value) {
    return value.isEmpty ? PasswordConfirmationValidationError.empty : (
      value == password.value? null: PasswordConfirmationValidationError.invalid
    );
  }

  @override
  List<Object?> get props => [
        value,
        password,
        isPure,
      ];
}

enum PasswordConfirmationValidationError {
  empty,
  invalid,
}
