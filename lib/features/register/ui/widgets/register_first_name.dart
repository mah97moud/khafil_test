import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:khafil_test/core/validators/first_name.dart';
import 'package:khafil_test/features/register/ui/widgets/register_form_field.dart';
import 'package:khafil_test/features/register/ui/widgets/register_form_text.dart';

import '../../managers/cubit/register_cubit.dart';

class RegisterFirstName extends StatefulWidget {
  const RegisterFirstName({
    super.key,
  });

  @override
  State<RegisterFirstName> createState() => _RegisterFirstNameState();
}

class _RegisterFirstNameState extends State<RegisterFirstName> {
  final _firstNameFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    final cubit = context.read<RegisterCubit>();

    _firstNameFocusNode.addListener(() {
      if (!_firstNameFocusNode.hasFocus) {
        cubit.onFirstNameUnfocused();
      }
    });
  }

  @override
  void dispose() {
    _firstNameFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const RegisterFormText(
            'First Name',
          ),
          BlocBuilder<RegisterCubit, RegisterState>(
            buildWhen: (previous, current) =>
                previous.firstName != current.firstName,
            builder: (context, state) {
              final cubit = context.read<RegisterCubit>();
              final firstNameError =
                  state.firstName.isNotValid ? state.firstName.error : null;
              return RegisterFormField(
                focusNode: _firstNameFocusNode,
                error: firstNameError == null
                    ? null
                    : (firstNameError == FirstNameValidationError.empty
                        ? null
                        : 'Please enter a valid first name'),
                onChanged: cubit.onFirstNameChanged,
                padding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                ).copyWith(
                  left: 20.0,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
