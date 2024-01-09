import 'package:flutter/material.dart';

class RegisterFormField extends StatelessWidget {
  const RegisterFormField({
    super.key,
    this.controller,
    this.obscureText,
    this.suffixIcon,
    this.padding,
    this.maxLines,
    this.focusNode,
    this.onChanged,
    this.error,
  });

  final TextEditingController? controller;
  final bool? obscureText;
  final Widget? suffixIcon;
  final EdgeInsets? padding;
  final int? maxLines;
  final FocusNode? focusNode;
  final void Function(String text)? onChanged;

  final String? error;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ??
          const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        obscureText: obscureText ?? false,
        onTapOutside: (details) {
          FocusScope.of(context).unfocus();
        },
        autofocus: false,
        onChanged: onChanged,
        maxLines: obscureText == true ? 1 : maxLines,
        decoration: InputDecoration(
          filled: true,
          suffixIcon: suffixIcon,
          errorText: error,
        ),
      ),
    );
  }
}
