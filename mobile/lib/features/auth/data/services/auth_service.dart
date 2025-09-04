import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthService {
  final Dio _dio;
  final FlutterSecureStorage _storage = const FlutterSecureStorage();

  static const String _baseURl = 'http://localhost:8001/api/v1/auth';
  static const String _tokenKey = 'auth_token';

  AuthService()
    : _dio = Dio(
        BaseOptions(
          baseUrl: _baseURl,
          connectTimeout: const Duration(seconds: 5),
          receiveTimeout: const Duration(seconds: 3),
        ),
      );

      Future<String?> register({
    required String email,
    required String password,
    String? displayName,
  }) async {
    try {
      final response = await _dio.post('/register', data: {
        'email': email,
        'password': password,
        'display_name': displayName,
      });

      final token = response.data['access_token'];
      if (token != null) {
        await _storage.write(key: _tokenKey, value: token);
      }
      return token;
    } catch (e) {
      throw Exception('Registration failed: $e');
    }
  }

  Future<String?> login({
    required String email,
    required String password,
  }) async {
    try {
      final response = await _dio.post('/login', data: {
        'email': email,
        'password': password,
      });

      final token = response.data['access_token'];
      if (token != null) {
        await _storage.write(key: _tokenKey, value: token);
      }
      return token;
    } catch (e) {
      throw Exception('Login failed: $e');
    }
  }

  Future<void> logout() async {
    await _storage.delete(key: _tokenKey);
  }

  Future<String?> getToken() async {
    return await _storage.read(key: _tokenKey);
  }

  Future<bool> isLoggedIn() async {
    final token = await getToken();
    return token != null;
  }
}
