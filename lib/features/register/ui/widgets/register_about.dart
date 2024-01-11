import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:khafil_test/core/validators/about.dart';
import 'package:khafil_test/features/register/ui/widgets/register_form_field.dart';
import 'package:khafil_test/features/register/ui/widgets/register_form_text.dart';

import '../../managers/register_cubit/register_cubit.dart';

class RegisterAbout extends StatefulWidget {
  const RegisterAbout({
    super.key,
  });

  @override
  State<RegisterAbout> createState() => _RegisterAboutState();
}

class _RegisterAboutState extends State<RegisterAbout> {
  final FocusNode focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    final cubit = context.read<RegisterCubit>();

    focusNode.addListener(() {
      if (!focusNode.hasFocus) {
        cubit.onAboutUnfocused();
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
        const RegisterFormText('About'),
        BlocBuilder<RegisterCubit, RegisterState>(
          builder: (context, state) {
            final cubit = context.read<RegisterCubit>();
              final error =
                  state.about.isNotValid ? state.about.error : null;
            return RegisterFormField(
              maxLines: 4,
              focusNode: focusNode,
              onChanged: cubit.onAboutChanged,
             error: error == null
                    ? null
                    : (error == AboutValidationError.empty
                        ? null
                        : 'Please enter a minimum of 10 characters'), 
            );
          },
        ),
      ],
    );
  }
}
