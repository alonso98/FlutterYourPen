import 'dart:convert';

import 'package:yourpen_1/models/auth/token.dart';
import 'package:yourpen_1/services/auth/SecureStorageService.dart';
import 'package:http/http.dart' as http;
import 'package:yourpen_1/utils/constants.dart';

class AuthService {
  final SecureStorageService storageService = SecureStorageService();
  final http.Client client = http.Client();

  Future<void> login(String login, String password) async {
    final response = await client.post(
      Uri.parse("$apiBaseUrl/api/auth/login"),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'email': login, 'password': password}),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final token = Token.fromJson(data);
      await storageService.saveToken(token);
    } else {
      throw Exception('Failed to authenticate');
    }
  }

  Future<void> logout() async {
    await storageService.deleteAll();
  }

  Future<bool> isUserAthenticated() async {
    final token = await storageService.getToken();

    if (token == null || token.token.isEmpty) {
      return false;
    }

    if (token.expireDate.isBefore(DateTime.now())) {
      return false;
    }

    return true;
  }
}