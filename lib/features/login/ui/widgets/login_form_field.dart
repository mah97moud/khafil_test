import 'package:flutter/material.dart';

class LoginFormField extends StatelessWidget {
  const LoginFormField({
    super.key,
    this.controller,
    this.obscureText,
    this.suffixIcon,
  });

  final TextEditingController? controller;
  final bool? obscureText;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
        child: TextFormField(
          controller: controller,
          obscureText: obscureText ?? false,
          onTapOutside: (details) {
            FocusScope.of(context).unfocus();
          },
          decoration: const InputDecoration(
            filled: true,
          ),
        ),
      ),
    );
  }
}
