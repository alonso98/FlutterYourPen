import 'package:flutter/material.dart';
import 'package:yourpen_1/routes/route_names.dart';
import 'package:yourpen_1/views/onboarding/refresh_password_page.dart';
import 'package:yourpen_1/views/onboarding/sign_in_page.dart';
import 'package:yourpen_1/views/onboarding/sign_up_page.dart';
import 'package:yourpen_1/views/onboarding/start_page.dart';

class Routes {

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.start: return MaterialPageRoute(builder: (_) => const StartPage());
      case RouteNames.signIn: return MaterialPageRoute(builder: (_) => const SignInPage());
      case RouteNames.signUp: return MaterialPageRoute(builder: (_) => const SignUpPage());
      case RouteNames.refreshPassword: return MaterialPageRoute(builder: (_) => const RefreshPasswordPage());
      default: return MaterialPageRoute(builder: (_) => const StartPage());
    }
  }
}