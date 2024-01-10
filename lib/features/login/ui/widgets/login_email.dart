import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:khafil_test/features/login/ui/widgets/login_form_field.dart';
import 'package:khafil_test/features/login/ui/widgets/login_form_text.dart';

import '../../../../core/validators/email.dart';
import '../../managers/login_cubit/login_cubit.dart';

class LoginEmail extends StatefulWidget {
  const LoginEmail({
    super.key,
  });

  @override
  State<LoginEmail> createState() => _LoginEmailState();
}

class _LoginEmailState extends State<LoginEmail> {
  final FocusNode _emailFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    final readLoginCubit = context.read<LoginCubit>();
    _emailFocusNode.addListener(() {
      if (!_emailFocusNode.hasFocus) {
        readLoginCubit.onEmailUnfocused();
      }
    });
  }

  @override
  void dispose() {
    _emailFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const LoginFormText('Email Address'),
          BlocBuilder<LoginCubit, LoginState>(
            builder: (context, state) {
              final readLoginCubit = context.read<LoginCubit>();
              final error = state.email.isNotValid ? state.email.error : null;
              return LoginFormField(
                focusNode: _emailFocusNode,
                onChanged: readLoginCubit.onEmailChanged,
                keyboardType: TextInputType.emailAddress,
                error: error == null
                    ? null
                    : (error == EmailValidationError.empty
                        ? null
                        : (error == EmailValidationError.alreadyRegistered
                            ? 'Email already registered'
                            : 'Please enter a valid email')),
              );
            },
          ),
        ],
      ),
    );
  }
}
