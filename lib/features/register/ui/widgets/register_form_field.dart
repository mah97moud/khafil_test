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
    this.onTapSuffixIcon,
    this.keyboardType,
    this.textInputAction,
  });

  final TextEditingController? controller;
  final bool? obscureText;
  final Widget? suffixIcon;
  final EdgeInsets? padding;
  final int? maxLines;
  final FocusNode? focusNode;
  final void Function(String text)? onChanged;
  final VoidCallback? onTapSuffixIcon;

  final String? error;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ??
          const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType ?? TextInputType.text,
        textInputAction: textInputAction ?? TextInputAction.next,
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
          suffixIcon: ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 24.0, maxWidth: 24.0),
            child: InkWell(
              onTap: onTapSuffixIcon,
              child: suffixIcon,
            ),
          ),
          errorText: error,
        ),
      ),
    );
  }
}
