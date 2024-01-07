import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khafil_test/core/managers/colors_manager.dart';
import 'package:khafil_test/core/managers/styles_manager.dart';

class ThemeManager {
  const ThemeManager._();

  static final ThemeData _theme = ThemeData.from(
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColorsManager.primary,
    ),
    textTheme: GoogleFonts.montserratTextTheme(),
  ).copyWith(
    appBarTheme: const AppBarTheme(
        // titleTextStyle: StylesManager.textStyle18,

        ),
    inputDecorationTheme: const InputDecorationTheme(
      fillColor: ColorsManager.grey50,
      filled: true,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(16.0),
        ),
      ),
    ),
    checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.all(ColorsManager.primary),
        checkColor: MaterialStateProperty.all(ColorsManager.white),
        overlayColor: MaterialStateProperty.all(ColorsManager.primary),
        side: const BorderSide(
          color: ColorsManager.grey400,
        )).copyWith(
      fillColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return ColorsManager.primary;
        }
        return null;
      }),
    ),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return ColorsManager.primary;
        }
        return null;
      }),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return ColorsManager.primary;
        }
        return null;
      }),
      trackColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return ColorsManager.primary;
        }
        return null;
      }),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: ColorsManager.primary,
      height: 56.0,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        maximumSize: MaterialStateProperty.all(
          const Size(double.infinity, 56.0),
        ),
        shape: MaterialStateProperty.all(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(12.0),
            ),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(ColorsManager.primary),
        foregroundColor: MaterialStateProperty.all(ColorsManager.white),
        textStyle: MaterialStateProperty.all(StylesManager.textStyle14),
      ),
    ),
  );

  static ThemeData get theme => _theme;
}
