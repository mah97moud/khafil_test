import 'package:formz/formz.dart';

class Name extends FormzInput<String, NameValidationError> {
  const Name.unValidated([String value = '']) : super.pure(value);
  const Name.validated([String value = '']) : super.dirty(value);

  @override
  NameValidationError? validator(String value) {
    if (value.isEmpty) {
      return NameValidationError.empty;
    } else if (value.length > 50) {
      return NameValidationError.invalid;
    } else {
      return null;
    }
  }
}

enum NameValidationError { empty, invalid }
