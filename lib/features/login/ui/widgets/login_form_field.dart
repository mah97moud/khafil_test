import 'package:flutter/material.dart';

class LoginFormField extends StatelessWidget {
  const LoginFormField({
    super.key,
    this.controller,
    this.obscureText,
    this.suffixIcon,
    this.padding,
    this.maxLines,
    this.focusNode,
    this.onChanged,
    this.onTapSuffixIcon,
    this.error,
    this.keyboardType,
    this.textInputAction,
    this.onComplete,
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
  final VoidCallback? onComplete;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ??
          const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        keyboardType: keyboardType ?? TextInputType.text,
        textInputAction: textInputAction ?? TextInputAction.next,
        onChanged: onChanged,
        obscureText: obscureText ?? false,
        onTapOutside: (details) {
          FocusScope.of(context).unfocus();
        },
        onEditingComplete: onComplete,
        decoration: InputDecoration(
            filled: true,
            errorText: error,
            suffixIcon: ConstrainedBox(
                constraints:
                    const BoxConstraints(maxHeight: 24.0, maxWidth: 24.0),
                child: InkWell(
                  onTap: onTapSuffixIcon,
                  child: suffixIcon,
                ))),
      ),
    );
  }
}
