import 'package:flutter/material.dart';
import 'package:khafil_test/features/register/ui/widgets/register_form_field.dart';
import 'package:khafil_test/features/register/ui/widgets/register_form_text.dart';

class RegisterFirstName extends StatelessWidget {
  const RegisterFirstName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const RegisterFormText(
            'First Name',
          ),
          RegisterFormField(
            padding: const EdgeInsets.symmetric(
              vertical: 8.0,
            ).copyWith(
              left: 20.0,
            ),
          ),
        ],
      ),
    );
  }
}