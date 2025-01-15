import 'package:flutter/material.dart';
import 'package:yourpen_1/services/auth/AuthService.dart';
import 'package:yourpen_1/utils/notifier/notifier.dart';

class SettingsViewmodel extends ChangeNotifier {
  final AuthService authService = AuthService();
  final Notifier notifier;

  SettingsViewmodel(this.notifier);

  Future signOut() async {
    authService.logout();
    notifyListeners();
  }
}