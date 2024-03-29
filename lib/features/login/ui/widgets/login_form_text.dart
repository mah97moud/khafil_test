import 'package:flutter/material.dart';
import 'package:khafil_test/core/managers/styles_manager.dart';

class LoginFormText extends StatelessWidget {
  const LoginFormText(
    this.title, {
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: Text(
        title,
        style: StylesManager.textStyle12,
      ),
    );
  }
}
