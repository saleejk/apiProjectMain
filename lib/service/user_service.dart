// import 'dart:math';
import 'dart:developer';
import 'package:api_project/model/login_model.dart';
import 'package:dio/dio.dart';
// import 'package:http/http.dart' as http;

class UserService {
  final _dio = Dio();

  Future createUser(UserModel userData) async {
    final url = "socialmedia-api-v1.onrender.com/auth/register";

    final responce = await _dio.post(url, data: userData.tojson());
    try {
      if (responce.statusCode == 201) {
        log('Account created');
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
      Response responce = await _dio.post(url, data: userInfo.tojson());
      if (responce.statusCode == 200) {
        log('User Logged in');
      }
    } catch (e) {}
  }
}
