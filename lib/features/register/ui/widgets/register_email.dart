import 'package:flutter/material.dart';
import 'package:khafil_test/features/common/sizes.dart';
import 'package:khafil_test/features/register/ui/widgets/register_form_field.dart';
import 'package:khafil_test/features/register/ui/widgets/register_form_text.dart';

class RegisterEmail extends StatelessWidget {
  const RegisterEmail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Sizes.h8(),
        RegisterFormText(
          'Email Address',
        ),
        RegisterFormField()
      ],
    );
  }
}
