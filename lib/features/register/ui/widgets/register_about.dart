import 'package:flutter/material.dart';
import 'package:khafil_test/features/register/ui/widgets/register_form_field.dart';
import 'package:khafil_test/features/register/ui/widgets/register_form_text.dart';

class RegisterAbout extends StatelessWidget {
  const RegisterAbout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RegisterFormText('About'),
        RegisterFormField(
          maxLines: 4,
        ),
      ],
    );
  }
}
