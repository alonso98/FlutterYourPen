import 'package:flutter/material.dart';
import 'package:yourpen_1/services/auth/AuthService.dart';
import 'package:yourpen_1/utils/notifier/notifier.dart';

class AuthViewModel extends ChangeNotifier {
  final AuthService authService = AuthService();
  final Notifier notifier;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  AuthViewModel(this.notifier);

  Future<bool> login(String email, String password) async {
    try {
      _setLoading(true);
      await authService.login(email, password);
      return true;
    } catch (e) {
      notifier.notify(e.toString());
      return false;
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
