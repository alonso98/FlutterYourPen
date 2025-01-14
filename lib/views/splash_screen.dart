import 'package:flutter/material.dart';
import 'package:yourpen_1/routes/route_names.dart';
import 'package:yourpen_1/services/auth/AuthService.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  final AuthService authService = AuthService();

  @override
  void initState() {
    super.initState();
    navigateBasedOnAuth();
  }

  Future<void> navigateBasedOnAuth() async {
    final isAuthenticated = await authService.isUserAthenticated();

    if (mounted) {
      if (isAuthenticated) {
        Navigator.pushReplacementNamed(context, RouteNames.home);
      } else {
        Navigator.pushReplacementNamed(context, RouteNames.start);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    // A simple splash or loading indicator
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
