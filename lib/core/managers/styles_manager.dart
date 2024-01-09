import 'package:flutter/material.dart';
import 'package:khafil_test/core/managers/colors_manager.dart';

class StylesManager {
  const StylesManager._();

  ///text style
  /// text size 12
  /// text weight FontWeight.w500
  /// text color ColorsManager.grey500
  static const TextStyle textStyle12 = TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.w500,
    color: ColorsManager.grey500,
  );

  ///text style
  /// text size 14
  /// text weight FontWeight.w500
  /// text color ColorsManager.grey500
  static const TextStyle textStyle14 = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w500,
  );

  ///text style
  /// text size 14
  /// text weight FontWeight.w500
  /// text color ColorsManager.grey500
  static const TextStyle textStyle16 = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
    color: ColorsManager.grey800,
  );

  ///text style
  /// text size 18
  /// text weight FontWeight.w600
  static const TextStyle textStyle18 = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w600,
    color: ColorsManager.black,
  );
}
