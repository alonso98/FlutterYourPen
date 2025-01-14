import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yourpen_1/routes/routes.dart';
import 'package:yourpen_1/themes/light_theme.dart';
import 'package:yourpen_1/view_models/lists/all_lists_viewmodel.dart';
import 'package:yourpen_1/view_models/on_boarding/sign_in_viewmodel.dart';
import 'package:yourpen_1/views/splash_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthViewModel>(create: (_) => AuthViewModel()),
        ChangeNotifierProvider(create: (_) => AllListsViewmodel())
      ],
      child: const MainApp())
    );
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
      home: const SplashScreen(),
    );
  }
}
