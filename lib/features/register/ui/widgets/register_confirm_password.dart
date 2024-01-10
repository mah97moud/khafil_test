import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:khafil_test/features/register/ui/widgets/register_form_field.dart';
import 'package:khafil_test/features/register/ui/widgets/register_form_text.dart';

import '../../../../core/validators/confirm_password.dart';
import '../../managers/cubit/register_cubit.dart';

class RegisterConfirmPassword extends StatefulWidget {
  const RegisterConfirmPassword({
    super.key,
  });

  @override
  State<RegisterConfirmPassword> createState() =>
      _RegisterConfirmPasswordState();
}

class _RegisterConfirmPasswordState extends State<RegisterConfirmPassword> {
  final FocusNode focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    final cubit = context.read<RegisterCubit>();

    focusNode.addListener(() {
      if (!focusNode.hasFocus) {
        cubit.onPasswordConfirmationUnfocused();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const RegisterFormText(
          'Confirm Password',
        ),
        BlocBuilder<RegisterCubit, RegisterState>(
          builder: (context, state) {
            final cubit = context.read<RegisterCubit>();
            final error = state.confirmPassword.isNotValid
                ? state.confirmPassword.error
                : null;
            return RegisterFormField(
              obscureText: state.secureConfirmPassword,
              suffixIcon:
              state.secureConfirmPassword == true ?
               const Icon(Icons.visibility_off_outlined) 
               : const Icon(Icons.visibility_outlined),
              onTapSuffixIcon: cubit.toggleSecureConfirmPassword,
              focusNode: focusNode,
              onChanged: cubit.onPasswordConfirmationChanged,
              error: error == null
                  ? null
                  : (error == PasswordConfirmationValidationError.empty
                      ? null
                      : 'Passwords do not match'),
            );
          },
        )
      ],
    );
  }
}
