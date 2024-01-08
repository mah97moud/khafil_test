import 'package:flutter/material.dart';
import 'package:khafil_test/features/register/ui/widgets/register_form_field.dart';
import 'package:khafil_test/features/register/ui/widgets/register_form_text.dart';

class RegisterPassword extends StatelessWidget {
  const RegisterPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RegisterFormText(
          'Password',
        ),
        RegisterFormField(
          obscureText: true,
          suffixIcon: Icon(Icons.visibility_off_outlined),
        )
      ],
    );
  }
}
