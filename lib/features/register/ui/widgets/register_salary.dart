import 'package:flutter/material.dart';
import 'package:khafil_test/core/managers/colors_manager.dart';
import 'package:khafil_test/core/managers/styles_manager.dart';
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
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                radius: 12.5,
                backgroundColor: ColorsManager.white,
                child: Icon(
                  Icons.remove,
                  size: 15.0,
                  color: ColorsManager.primary,
                ),
              ),
              Text(
                'SAR 1000',
                textAlign: TextAlign.center,
                style: StylesManager.textStyle16,
              ),
              CircleAvatar(
                radius: 12.5,
                backgroundColor: ColorsManager.white,
                child: Icon(
                  Icons.add,
                  size: 15.0,
                  color: ColorsManager.primary,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
