import 'package:flutter/material.dart';

class DefaultBtn extends StatelessWidget {
  const DefaultBtn(
    this.title, {
    super.key,
    this.onPressed,
    this.width,
  });
  final String title;
  final VoidCallback? onPressed;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      height: 56.0,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          title,
        ),
      ),
    );
  }
}
