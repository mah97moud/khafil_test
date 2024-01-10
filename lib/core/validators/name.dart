import 'package:formz/formz.dart';

class Name extends FormzInput<String, FirstNameValidationError> {
  const Name.unValidated([String value = '']) : super.pure(value);
  const Name.validated([String value = '']) : super.dirty(value);

  @override
  FirstNameValidationError? validator(String value) {
    if (value.isEmpty) {
      return FirstNameValidationError.empty;
    } else if (value.length > 50) {
      return FirstNameValidationError.invalid;
    } else {
      return null;
    }
  }
}

enum FirstNameValidationError { empty, invalid }
