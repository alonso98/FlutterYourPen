import 'package:http/http.dart' as http;
import 'package:yourpen_1/services/auth/SecureStorageService.dart';
import 'package:yourpen_1/utils/constants.dart';

class Apiclient {
  final http.Client client = http.Client();
  final SecureStorageService storageService = SecureStorageService();

  Future<http.Response> get(String endPoint) async {
    final token = await storageService.getToken();
    return client.get(
      Uri.parse(apiBaseUrl), 
      headers: {
        'Content-Type': 'application/json',
        if (token != null) 'Authorization': 'Bearer ${token.token}',
      });
  }
}
