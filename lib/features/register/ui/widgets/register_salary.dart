import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:khafil_test/core/managers/colors_manager.dart';
import 'package:khafil_test/core/managers/styles_manager.dart';
import 'package:khafil_test/features/register/managers/register_cubit/register_cubit.dart';
import 'package:khafil_test/features/register/ui/widgets/register_form_text.dart';

class RegisterSalary extends StatelessWidget {
  const RegisterSalary({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const RegisterFormText('Salary'),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
          height: 62.0,
          decoration: ShapeDecoration(
            color: ColorsManager.grey50,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: BlocBuilder<RegisterCubit, RegisterState>(
            builder: (context, state) {
              final salary = state.salary;
              final readRegCubit = context.read<RegisterCubit>();
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      readRegCubit.decreaseSalary();
                    },
                    child: const CircleAvatar(
                      radius: 12.5,
                      backgroundColor: ColorsManager.white,
                      child: Icon(
                        Icons.remove,
                        size: 15.0,
                        color: ColorsManager.primary,
                      ),
                    ),
                  ),
                  Text(
                    'SAR $salary',
                    textAlign: TextAlign.center,
                    style: StylesManager.textStyle16,
                  ),
                  InkWell(
                    onTap: () {
                      readRegCubit.increaseSalary();
                    },
                    child: const CircleAvatar(
                      radius: 12.5,
                      backgroundColor: ColorsManager.white,
                      child: Icon(
                        Icons.add,
                        size: 15.0,
                        color: ColorsManager.primary,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        )
      ],
    );
  }
}
