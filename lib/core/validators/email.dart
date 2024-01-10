import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';

class Email extends FormzInput<String, EmailValidationError>
    with EquatableMixin {
  const Email.unValidated([String value = ''])
      : isAlreadyRegistered = false,
        super.pure(value);
  const Email.validated(String value, {this.isAlreadyRegistered = false})
      : super.dirty(value);

  static final _emailRegExp = RegExp(
    '^(([\\w-]+\\.)+[\\w-]+|([a-zA-Z]|[\\w-]{2,}))@((([0-1]?'
    '[0-9]{1,2}|25[0-5]|2[0-4][0-9])\\.([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])\\.'
    '([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])\\.([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])'
    ')|([a-zA-Z]+[\\w-]+\\.)+[a-zA-Z]{2,4})\$',
  );

  final bool isAlreadyRegistered;
  @override
  List<Object?> get props => [value, isAlreadyRegistered, isPure];

  @override
  EmailValidationError? validator(String value) {
    return value.isEmpty
        ? EmailValidationError.empty
        : (isAlreadyRegistered
            ? EmailValidationError.alreadyRegistered
            : (_emailRegExp.hasMatch(value)
                ? null
                : EmailValidationError.invalid));
  }
}

enum EmailValidationError {
  empty,
  invalid,
  alreadyRegistered,
}
