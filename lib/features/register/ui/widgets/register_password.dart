import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:khafil_test/features/register/ui/widgets/register_form_field.dart';
import 'package:khafil_test/features/register/ui/widgets/register_form_text.dart';

import '../../../../core/validators/password.dart';
import '../../managers/cubit/register_cubit.dart';

class RegisterPassword extends StatefulWidget {
  const RegisterPassword({
    super.key,
  });

  @override
  State<RegisterPassword> createState() => _RegisterPasswordState();
}

class _RegisterPasswordState extends State<RegisterPassword> {
  final FocusNode focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    final cubit = context.read<RegisterCubit>();

    focusNode.addListener(() {
      if (!focusNode.hasFocus) {
        cubit.onPasswordUnfocused();
      }
    });
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const RegisterFormText(
          'Password',
        ),
        BlocBuilder<RegisterCubit, RegisterState>(
          builder: (context, state) {
            final cubit = context.read<RegisterCubit>();
            final error =
                state.password.isNotValid ? state.password.error : null;
            return RegisterFormField(
              obscureText: state.securePassword,
              suffixIcon: state.securePassword == true
                  ? const Icon(Icons.visibility_off_outlined)
                  : const Icon(Icons.visibility_outlined),
              onTapSuffixIcon: cubit.toggleSecurePassword,
              focusNode: focusNode,
              onChanged: cubit.onPasswordChanged,
              error: error == null
                  ? null
                  : (error == PasswordValidationError.empty
                      ? null
                      : 'password must be at least 8 characters long'),
            );
          },
        )
      ],
    );
  }
}
