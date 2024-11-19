import 'package:flutter/material.dart';
import 'package:yourpen_1/services/auth/AuthService.dart';

class AuthViewModel extends ChangeNotifier {
  final AuthService authService = AuthService();

  Future<void> login(String email, String password) async {
    try {
      await authService.login(email, password);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> logout() async {
    await authService.logout();
    notifyListeners();
  }
}
