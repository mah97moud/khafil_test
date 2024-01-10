import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:khafil_test/core/validators/name.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterState.initial());

  void onFirstNameChanged(String newValue) {
    final prevState = state;

    final prevFirstNameState = prevState.firstName;
    final shouldValidate = prevFirstNameState.isNotValid;

    final firstNameState = shouldValidate
        ? Name.validated(newValue)
        : Name.unValidated(newValue);
    final newState = state.copyWith(
      firstName: firstNameState,
    );
    emit(newState);
  }

  void onFirstNameUnfocused() {
    final prevState = state;
    final firstNameState = prevState.firstName;
    final prevFirstNameValue = firstNameState.value;
    final newFirstNameState = Name.validated(prevFirstNameValue);
    final newState = state.copyWith(
      firstName: newFirstNameState,
    );
    emit(newState);
  }

  bool get isFormValid => Formz.validate([
      state.firstName,
    ]);

  Future<void> onNextPressed() async {
    final firstName = Name.validated(state.firstName.value);

    final isFormValid = Formz.validate([
      firstName,
    ]);
    final newState = state.copyWith(
      firstName: firstName,
      submissionStatus: SubmissionStatus.error,
      error: 'Fill the required fields',
    );
    emit(newState);
    if (!isFormValid) {
      return;
    }
  }
}
