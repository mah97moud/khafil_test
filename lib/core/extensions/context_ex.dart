import 'package:flutter/material.dart';

extension ContextEx on BuildContext {
  void showSnackBar(String message) => ScaffoldMessenger.of(this)
    ..clearSnackBars()
    ..showSnackBar(
      SnackBar(
        content: Text(message),
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.all(20),
      ),
    );

  void showLoadingSnackBar(String message) => ScaffoldMessenger.of(this)
    ..clearSnackBars()
    ..showSnackBar(
      SnackBar(
        content: Row(
          children: [
            const CircularProgressIndicator.adaptive(),
            const SizedBox(width: 10),
            Text(message),
          ],
        ),
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.all(20),
      ),
    );

  void hideSnackBar() => ScaffoldMessenger.of(this).clearSnackBars();
}
