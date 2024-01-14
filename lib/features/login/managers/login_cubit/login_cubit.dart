import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:khafil_test/core/app/di.dart';
import 'package:khafil_test/core/app/network/app_pref.dart';
import 'package:khafil_test/core/helpers/result.dart';
import 'package:khafil_test/features/login/login_repo/login_repo.dart';

import '../../../../core/validators/email.dart';
import '../../../../core/validators/password.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._repository, this._appPrefs) : super(LoginState.initial()) ;

 
  final LoginRepo _repository;
  final AppPrefs _appPrefs;

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

  Future<void> submit() async {
    final email = state.email;
    final password = state.password;

    final isFormValid = Formz.validate([email, password]);

    final newState = state.copyWith(
      email: email,
      password: password,
      status: isFormValid ? LoginStatus.inProgress : LoginStatus.idle,
    );
    emit(newState);

    if (isFormValid) {
      try {
        final data = {'email': email.value, 'password': password.value};
        final result = await _repository.login(
          data: data,
        );

        result.when(
          success: (data) async {
            rememberMe = true;
            final newState = state.copyWith(
              status: LoginStatus.success,
            );
            await initDI(true);
            emit(newState);
          },
          failure: (message, ex) {
            final newState = state.copyWith(
              status: LoginStatus.error,
              message: result.message,
            );
            emit(newState);
          },
        );
      } catch (e) {
        debugPrint('Login Error Exception : $e');
        final newState = state.copyWith(
          status: LoginStatus.error,
          message: e.toString(),
        );

        emit(newState);
      }
    }
  }

  void toggleRememberMe(bool newValue) async {
    final newState = state.copyWith(
      rememberMe: newValue,
    );
    await _appPrefs.saveRememberMe(newValue);
    emit(newState);
  }
}
