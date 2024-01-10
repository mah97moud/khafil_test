import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:khafil_test/core/app/di.dart';
import 'package:khafil_test/features/register/managers/cubit/register_cubit.dart';
import 'package:khafil_test/features/register/ui/widgets/register_form_text.dart';

import '../../../../core/managers/colors_manager.dart';

class RegisterUserType extends StatelessWidget {
  const RegisterUserType({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const RegisterFormText(
          'User Type',
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
          decoration: ShapeDecoration(
            color: ColorsManager.grey50,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          height: 56,
          child: BlocBuilder<RegisterCubit, RegisterState>(
            buildWhen: (previous, current) =>
                previous.userType != current.userType,
            builder: (context, state) {
              return DropdownButtonFormField<int>(
                decoration: const InputDecoration(
                  fillColor: ColorsManager.grey50,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 16.0,
                  ),
                ),
                icon: const Icon(Icons.keyboard_arrow_down_rounded),
                items: types
                    .map(
                      (e) => DropdownMenuItem<int>(
                        value: e.value,
                        child: Text(e.label),
                      ),
                    )
                    .toList(),
                onChanged: 
                    context.read<RegisterCubit>().onUserTypeChanged,
              );
            },
          ),
        )
      ],
    );
  }
}
