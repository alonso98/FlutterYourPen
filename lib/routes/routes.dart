import 'package:flutter/material.dart';
import 'package:yourpen_1/routes/route_names.dart';
import 'package:yourpen_1/views/main/lists/all_lists_page.dart';
import 'package:yourpen_1/views/main/main_page.dart';
import 'package:yourpen_1/views/onboarding/refresh_password_page.dart';
import 'package:yourpen_1/views/onboarding/sign_in_page.dart';
import 'package:yourpen_1/views/onboarding/sign_up_page.dart';
import 'package:yourpen_1/views/onboarding/start_page.dart';

class Routes {

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.start: return MaterialPageRoute(builder: (_) => const StartPage());
      case RouteNames.signIn: return MaterialPageRoute(builder: (_) => SignInPage());
      case RouteNames.signUp: return MaterialPageRoute(builder: (_) => SignUpPage());
      case RouteNames.refreshPassword: return MaterialPageRoute(builder: (_) => RefreshPasswordPage());

      case RouteNames.home: return MaterialPageRoute(builder: (_) => HomePage());
      case RouteNames.lists: return MaterialPageRoute(builder: (_) => ListsPage());
      default: return MaterialPageRoute(builder: (_) => const StartPage());
    }
  }
}