import 'package:flutter/material.dart';

class RegisterFormField extends StatelessWidget {
  const RegisterFormField({
    super.key,
    this.controller,
    this.obscureText,
    this.suffixIcon,
    this.padding,
    this.maxLines,
  });

  final TextEditingController? controller;
  final bool? obscureText;
  final Widget? suffixIcon;
  final EdgeInsets? padding;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ??
          const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText ?? false,
        onTapOutside: (details) {
          FocusScope.of(context).unfocus();
        },
        maxLines: obscureText == true ? 1 : maxLines,
        decoration: InputDecoration(
          filled: true,
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
