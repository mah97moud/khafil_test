import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:khafil_test/features/register/ui/widgets/register_form_text.dart';

import '../../managers/register_cubit/register_cubit.dart';

class RegisterGender extends StatelessWidget {
  const RegisterGender({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
      builder: (context, state) {
        final readRegCubit = context.read<RegisterCubit>();
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const RegisterFormText('Gender'),
            SizedBox(
              child: Row(
                children: [
                  SizedBox(
                    width: 150.0,
                    child: RadioListTile<int>(
                      value: 0,
                      groupValue: state.gender,
                      onChanged: readRegCubit.onGenderChanged,
                      title: const Text('Male'),
                    ),
                  ),
                  SizedBox(
                    width: 160.0,
                    child: RadioListTile<int>(
                      value: 1,
                      groupValue: state.gender,
                      onChanged: readRegCubit.onGenderChanged,
                      title: const Text('Female'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
