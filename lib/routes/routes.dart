import 'package:flutter/material.dart';
import 'package:yourpen_1/views/onboarding/start_page.dart';

class Routes {
  static const String start = '/';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case start: return MaterialPageRoute(builder: (_) => const StartPage());
      default: return MaterialPageRoute(builder: (_) => const StartPage());
    }
  }
}