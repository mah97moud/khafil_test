import 'package:flutter/material.dart';
import 'package:khafil_test/core/managers/theme_manager.dart';

import 'features/login/ui/login_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeManager.theme,
      home: const LoginView(),
    );
  }
}
