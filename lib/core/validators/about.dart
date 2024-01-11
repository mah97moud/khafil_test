import 'package:formz/formz.dart';

class About extends FormzInput<String, AboutValidationError> {
  const About.unValidated([String value = '']) : super.pure(value);
  const About.validated([String value = '']) : super.dirty(value);

  @override
  AboutValidationError? validator(String value) {
    if (value.isEmpty) {
      return AboutValidationError.empty;
    } else if (value.length > 1000 || value.length < 10) { 
      return AboutValidationError.invalid;
    } else {
      return null;
    }
  }
}

enum AboutValidationError { empty, invalid }
