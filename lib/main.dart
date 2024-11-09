import 'package:flutter/material.dart';
import 'package:yourpen_1/routes/routes.dart';
import 'package:yourpen_1/themes/light_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      onGenerateRoute: Routes.generateRoute,
      builder: (context, child) {
        return SafeArea(
          child: child!,
        );
      },
    );
  }
}
