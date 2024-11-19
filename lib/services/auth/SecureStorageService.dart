import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:yourpen_1/models/auth/token.dart';

class SecureStorageService {
  final String tokenKey = "token";
  final String expireDateKey = "expireDate";
  final FlutterSecureStorage storage = const FlutterSecureStorage();

  Future<void> saveToken(Token tokenModel) async {
    await storage.write(key: tokenKey, value: tokenModel.token);
    await storage.write(
        key: expireDateKey, value: tokenModel.expireDate.toString());
  }

  Future<bool> isAuthorized() async {
    final token = await storage.read(key: tokenKey);
    final tokenExpire =
        DateTime.parse(await storage.read(key: expireDateKey) ?? "");

    return token != null && tokenExpire.isAfter(DateTime.now());
  }

  Future<Token?> getToken() async {
    final token = await storage.read(key: tokenKey);
    final expireDate = await storage.read(key: expireDateKey);
    if (token == null || expireDate == null) return null;

    return Token(
        token: token,
        expireDate: DateTime.parse(expireDate));
  }

  Future<void> deleteAll() {
    return storage.deleteAll();
  }
}
