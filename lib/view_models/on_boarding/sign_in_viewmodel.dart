import 'package:flutter/material.dart';
import 'package:yourpen_1/services/auth/AuthService.dart';

class AuthViewModel extends ChangeNotifier {
  final AuthService authService = AuthService();

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<void> login(String email, String password) async {
    try {
      _setLoading(true);
      await authService.login(email, password);
    } catch (e) {
      rethrow;
    }
    finally{
      _setLoading(false);
    }
  }

  Future<void> logout() async {
    await authService.logout();
    notifyListeners();
  }

  void _setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }
}
