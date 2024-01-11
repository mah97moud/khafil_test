import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:khafil_test/core/validators/about.dart';
import 'package:khafil_test/core/validators/confirm_password.dart';
import 'package:khafil_test/core/validators/email.dart';
import 'package:khafil_test/core/validators/name.dart';
import 'package:khafil_test/core/validators/password.dart';

import '../../../../core/helpers/app_utility.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterState.initial());

  void onFirstNameChanged(String newValue) {
    final prevState = state;

    final prevFirstNameState = prevState.firstName;
    final shouldValidate = prevFirstNameState.isNotValid;

    final firstNameState =
        shouldValidate ? Name.validated(newValue) : Name.unValidated(newValue);
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

  void onLastNameChanged(String newValue) {
    final prevState = state;

    final prevLastNameState = prevState.lastName;
    final shouldValidate = prevLastNameState.isNotValid;

    final lastNameState =
        shouldValidate ? Name.validated(newValue) : Name.unValidated(newValue);
    final newState = state.copyWith(
      lastName: lastNameState,
    );
    emit(newState);
  }

  void onLastNameUnfocused() {
    final prevState = state;
    final lastNameState = prevState.lastName;
    final prevLastNameValue = lastNameState.value;
    final newLastNameState = Name.validated(prevLastNameValue);
    final newState = state.copyWith(
      lastName: newLastNameState,
    );
    emit(newState);
  }

  void onEmailChanged(String newValue) {
    final prevEmail = state.email;
    final shouldValidate = prevEmail.isNotValid;

    final newState = state.copyWith(
      email: shouldValidate
          ? Email.validated(newValue,
              isAlreadyRegistered: newValue == prevEmail.value
                  ? prevEmail.isAlreadyRegistered
                  : false)
          : Email.unValidated(newValue),
    );

    emit(newState);
  }

  void onEmailUnfocused() {
    final newState = state.copyWith(
      email: Email.validated(state.email.value,
          isAlreadyRegistered: state.email.isAlreadyRegistered),
    );
    emit(newState);
  }

  void toggleSecurePassword() {
    final prevState = state.securePassword ?? true;
    final newState = state.copyWith(
      securePassword: !prevState,
    );
    emit(newState);
  }

  void onPasswordChanged(String newValue) {
    final prevPassword = state.password;
    final shouldValidate = prevPassword.isNotValid;

    final newState = state.copyWith(
      password: shouldValidate
          ? Password.validated(newValue)
          : Password.unValidated(newValue),
    );

    emit(newState);
  }

  void onPasswordUnfocused() {
    final newState = state.copyWith(
      password: Password.validated(state.password.value),
    );
    emit(newState);
  }

  void toggleSecureConfirmPassword() {
    final prevState = state.secureConfirmPassword ?? true;
    final newState = state.copyWith(
      secureConfirmPassword: !prevState,
    );
    emit(newState);
  }

  void onPasswordConfirmationChanged(String newValue) {
    final prevPasswordConfirmation = state.confirmPassword;
    final shouldValidate = prevPasswordConfirmation.isNotValid;
    final newState = state.copyWith(
      confirmPassword: shouldValidate
          ? PasswordConfirmation.validated(
              newValue,
              password: state.password,
            )
          : PasswordConfirmation.unValidated(newValue),
    );

    emit(newState);
  }

  void onPasswordConfirmationUnfocused() {
    final newState = state.copyWith(
      confirmPassword: PasswordConfirmation.validated(
        state.confirmPassword.value,
        password: state.password,
      ),
    );
    emit(newState);
  }

  void onUserTypeChanged(int? newValue) {
    final newState = state.copyWith(userType: newValue);
    emit(newState);
  }

  void onAvatarChanged(File? newValue) {
    final newState = state.copyWith(avatar: newValue);
    emit(newState);
  }

  void pickAvatar(BuildContext context) async {
    try {
      final pickedFile = await AppUtility.pickFile(context);
      if (pickedFile != null) {
        var path = pickedFile.path;
        final file = path != null ? File(path) : null;
        onAvatarChanged(file);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  void onAboutChanged(String newValue) {
    final prevAbout = state.about;
    final shouldValidate = prevAbout.isNotValid;
    final newState = state.copyWith(
      about: shouldValidate
          ? About.validated(newValue)
          : About.unValidated(newValue),
    );

    emit(newState);
  }

  void onAboutUnfocused() {
    final newState = state.copyWith(
      about: About.validated(
        state.about.value,
      ),
    );
    emit(newState);
  }

   void onSalaryChanged(int newValue) {
    final newState = state.copyWith(salary: newValue);
    emit(newState);
  }

  void increaseSalary() {
    final newState = state.copyWith(salary: state.salary + 1);
    emit(newState);
  }

  void decreaseSalary() {
    final newState = state.copyWith(salary: state.salary - 1);
    emit(newState);
  }

  void onDateChanged(String newValue) {
    final newState = state.copyWith(date: newValue);
    emit(newState);
  }

  bool get isFormValid =>
      Formz.validate([
        Name.validated(state.firstName.value),
        Name.validated(state.lastName.value),
        Email.validated(state.email.value),
        Password.validated(state.password.value),
        PasswordConfirmation.validated(
          state.confirmPassword.value,
          password: state.password,
        )
      ]) &&
      state.userType != -1;

  Future<void> onNextPressed() async {
    final firstName = Name.validated(state.firstName.value);
    final lastName = Name.validated(state.lastName.value);
    final email = Email.validated(state.email.value);
    final password = Password.validated(state.password.value);
    final confirmPassword = PasswordConfirmation.validated(
      state.confirmPassword.value,
      password: state.password,
    );

    final isFormValid = Formz.validate([
          firstName,
          lastName,
          email,
          password,
          confirmPassword,
        ]) &&
        state.userType != -1;

    final newState = state.copyWith(
      firstName: firstName,
      lastName: lastName,
      email: email,
      password: password,
      confirmPassword: confirmPassword,
      submissionStatus: SubmissionStatus.validatingForm,
      error: 'Fill the required fields',
    );
    emit(newState);
    if (!isFormValid) {
      emit(
        newState.copyWith(
          submissionStatus: SubmissionStatus.inValid,
          error: 'Fill the required fields',
        ),
      );
    } else {
      emit(
        newState.copyWith(
          submissionStatus: SubmissionStatus.valid,
          stepperStatus: StepperStatus.next,
        ),
      );
    }
  }
}
