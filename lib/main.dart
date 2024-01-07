import 'package:flutter/material.dart';
import 'package:khafil_test/core/managers/theme_manager.dart';

import 'core/routes/routes_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

    final router = RoutesManager().router;
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeManager.theme,
      routerConfig: router,
    );
  }
}
