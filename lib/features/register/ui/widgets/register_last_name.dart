import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:khafil_test/features/register/ui/widgets/register_form_field.dart';
import 'package:khafil_test/features/register/ui/widgets/register_form_text.dart';

import '../../../../core/validators/name.dart';
import '../../managers/register_cubit/register_cubit.dart';

class RegisterLastName extends StatefulWidget {
  const RegisterLastName({
    super.key,
  });

  @override
  State<RegisterLastName> createState() => _RegisterLastNameState();
}

class _RegisterLastNameState extends State<RegisterLastName> {
  final FocusNode focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    final cubit = context.read<RegisterCubit>();

    focusNode.addListener(() {
      if (!focusNode.hasFocus) {
        cubit.onLastNameUnfocused();
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
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const RegisterFormText(
            'Last Name',
          ),
          BlocBuilder<RegisterCubit, RegisterState>(
            builder: (context, state) {
              final cubit = context.read<RegisterCubit>();
              final error =
                  state.lastName.isNotValid ? state.lastName.error : null;

              return RegisterFormField(
                focusNode: focusNode,
                error: error == null
                    ? null
                    : (error == NameValidationError.empty
                        ? null
                        : 'Please enter a valid last name'),
                onChanged: cubit.onLastNameChanged,
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
