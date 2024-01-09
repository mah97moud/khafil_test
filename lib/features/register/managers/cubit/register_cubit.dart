import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:khafil_test/core/validators/first_name.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterState.initial());

  void onFirstNameChanged(String newValue) {
    final prevState = state;

    final prevFirstNameState = prevState.firstName;
    final shouldValidate = prevFirstNameState.isNotValid;

    final firstNameState = shouldValidate
        ? FirstName.validated(newValue)
        : FirstName.unValidated(newValue);
    final newState = state.copyWith(
      firstName: firstNameState,
    );
    emit(newState);
  }

  void onFirstNameUnfocused() {
    final prevState = state;
    final firstNameState = prevState.firstName;
    final prevFirstNameValue = firstNameState.value;
    final newFirstNameState = FirstName.validated(prevFirstNameValue);
    final newState = state.copyWith(
      firstName: newFirstNameState,
    );
    emit(newState);
  }
}
