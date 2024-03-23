import 'dart:developer';
import 'package:api_project/model/login_model.dart';
import 'package:dio/dio.dart';

class UserService {
  final _dio = Dio();

  Future createUser(UserModel userData) async {
    const url = "socialmedia-api-v1.onrender.com/auth/register";

    try {
      final response = await _dio.post(url, data: userData.tojson());
      if (response.statusCode == 201) {
        log('Account created ${response.toString()}');
      } else {
        throw Exception("failed to login");
      }
    } catch (e) {
      throw Exception("failed to register $e");
    }
  }

  Future userLogin(UserModel userInfo) async {
    const url = "socialmedia-api-v1.onrender.com/auth/login";
    try {
      Response response = await _dio.post(url, data: userInfo.tojson());
      if (response.statusCode == 200) {
        log('User Logged in');
        return null;
      }
    } catch (e) {}
  }
}
