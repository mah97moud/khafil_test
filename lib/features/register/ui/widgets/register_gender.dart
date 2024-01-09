import 'package:flutter/material.dart';
import 'package:khafil_test/features/register/ui/widgets/register_form_text.dart';

class RegisterGender extends StatefulWidget {
  const RegisterGender({
    super.key,
  });

  @override
  State<RegisterGender> createState() => _RegisterGenderState();
}

class _RegisterGenderState extends State<RegisterGender> {
  int groupValue = 0;
  @override
  Widget build(BuildContext context) {
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
                  groupValue: groupValue,
                  onChanged: (newValue) {
                    _onChanged(newValue!);
                  },
                  title: const Text('Male'),
                ),
              ),
              SizedBox(
                width: 160.0,
                child: RadioListTile<int>(
                  value: 1,
                  groupValue: groupValue,
                  onChanged: (newValue) {
                    _onChanged(newValue!);
                  },
                  title: const Text('Female'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void _onChanged(int value) {
    setState(() {
      groupValue = value;
    });
  }
}
