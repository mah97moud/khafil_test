import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:khafil_test/features/login/ui/widgets/login_form_field.dart';
import 'package:khafil_test/features/login/ui/widgets/login_form_text.dart';

import '../../../../core/validators/password.dart';
import '../../managers/login_cubit/login_cubit.dart';

class LoginPassword extends StatefulWidget {
  const LoginPassword({
    super.key,
  });

  @override
  State<LoginPassword> createState() => _LoginPasswordState();
}

class _LoginPasswordState extends State<LoginPassword> {
  final FocusNode _passwordFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    final readLoginCubit = context.read<LoginCubit>();
    _passwordFocusNode.addListener(() {
      if (!_passwordFocusNode.hasFocus) {
        readLoginCubit.onPasswordUnfocused();
      }
    });
  }

  @override
  void dispose() {
    _passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const LoginFormText('Password'),
          BlocBuilder<LoginCubit, LoginState>(
            builder: (context, state) {
              final readLoginCubit = context.read<LoginCubit>();
              final error =
                  state.password.isNotValid ? state.password.error : null;
              return LoginFormField(
                obscureText: state.securePassword,
                suffixIcon: state.securePassword == true
                    ? const Icon(Icons.visibility_off_outlined)
                    : const Icon(Icons.visibility_outlined),
                focusNode: _passwordFocusNode,
                textInputAction: TextInputAction.done,
                onTapSuffixIcon: readLoginCubit.toggleSecurePassword,
                onChanged: readLoginCubit.onPasswordChanged,
                onComplete: readLoginCubit.submit,
                error: error == null
                    ? null
                    : (error == PasswordValidationError.empty
                        ? null
                        : 'password must be at least 8 characters long'),
                // suffixIcon: Icon(Icons.visibility_outlined),
                // suffixIcon: Icon(Icons.remove_red_eye_outlined),
              );
            },
          ),
        ],
      ),
    );
  }
}
