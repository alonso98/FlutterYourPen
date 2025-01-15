import 'package:flutter/material.dart';
import 'package:yourpen_1/utils/notifier/notifier.dart';

class SnackbarNotifier extends Notifier {
  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey;

  SnackbarNotifier({required this.scaffoldMessengerKey});

  @override
  void notify(String message) {
    scaffoldMessengerKey.currentState?.showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 3)
      )
    );
  }

}