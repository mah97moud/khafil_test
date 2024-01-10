import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:khafil_test/features/common/sizes.dart';
import 'package:khafil_test/features/register/ui/widgets/register_form_field.dart';
import 'package:khafil_test/features/register/ui/widgets/register_form_text.dart';

import '../../../../core/validators/email.dart';
import '../../managers/cubit/register_cubit.dart';

class RegisterEmail extends StatefulWidget {
  const RegisterEmail({
    super.key,
  });

  @override
  State<RegisterEmail> createState() => _RegisterEmailState();
}

class _RegisterEmailState extends State<RegisterEmail> {
  final FocusNode focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    final cubit = context.read<RegisterCubit>();

    focusNode.addListener(() {
      if (!focusNode.hasFocus) {
        cubit.onEmailUnfocused();
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
        const Sizes.h8(),
        const RegisterFormText(
          'Email Address',
        ),
        BlocBuilder<RegisterCubit, RegisterState>(
          builder: (context, state) {
            final cubit = context.read<RegisterCubit>();
            final error = state.email.isNotValid ? state.email.error : null;

            return RegisterFormField(
              focusNode: focusNode,
              onChanged: cubit.onEmailChanged,
              keyboardType: TextInputType.emailAddress,
              error:
                  error == null
                    ? null
                    : (error == EmailValidationError.empty
                        ? null
                        : (error == EmailValidationError.alreadyRegistered
                            ? 'Email already registered'
                            : 'Please enter a valid email')),
            );
          },
        )
      ],
    );
  }
}
