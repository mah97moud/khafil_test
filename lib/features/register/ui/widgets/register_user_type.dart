import 'package:flutter/material.dart';
import 'package:khafil_test/features/register/ui/widgets/register_form_field.dart';
import 'package:khafil_test/features/register/ui/widgets/register_form_text.dart';

class RegisterUserType extends StatelessWidget {
  const RegisterUserType({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RegisterFormText(
          'User Type',
        ),
        RegisterFormField(
          suffixIcon: Icon(
            Icons.keyboard_arrow_down,
            size: 30.0,
          ),
        )
      ],
    );
  }
}
