import 'package:flutter/material.dart';

import '../../core/managers/colors_manager.dart';

class AppDefaultContainer extends StatelessWidget {
  const AppDefaultContainer({
    Key? key,
    required this.child,
    this.color,
    this.borderRadius,
    this.padding,
    this.margin,
    this.width,
  }) : super(key: key);

  final Widget child;
  final Color? color;
  final double? borderRadius;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: width,
      padding: padding ??
          const EdgeInsets.symmetric(
            horizontal: 48.0,
            vertical: 14.0,
          ),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 10.0),
        ),
        color: color ?? ColorsManager.grey50,
      ),
      child: child,
    );
  }
}
