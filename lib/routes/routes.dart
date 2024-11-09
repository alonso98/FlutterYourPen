import 'package:flutter/material.dart';
import 'package:yourpen_1/routes/route_names.dart';
import 'package:yourpen_1/views/onboarding/sign_in_page.dart';
import 'package:yourpen_1/views/onboarding/start_page.dart';

class Routes {

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.start: return MaterialPageRoute(builder: (_) => const StartPage());
      case RouteNames.signIn: return MaterialPageRoute(builder: (_) => SignInPage());
      default: return MaterialPageRoute(builder: (_) => const StartPage());
    }
  }
}