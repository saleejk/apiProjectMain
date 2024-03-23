import 'package:api_project/model/login_model.dart';
import 'package:api_project/service/store_service.dart';
import 'package:api_project/service/user_service.dart';
import 'package:flutter/cupertino.dart';

class UserController extends ChangeNotifier {
  List<UserModel> userDataList = [];

  TextEditingController emailC = TextEditingController();
  TextEditingController usernameC = TextEditingController();
  TextEditingController passwordC = TextEditingController();
  final UserService userService = UserService();
  final StoreService storeService = StoreService();
  String? userStatusCode;
  String? createdStatusCode;
  String username = '';
  String email = '';

  createUser(UserModel userInfo) async {
    await userService.createUser(userInfo);
    createdStatusCode = userService.createdStatusCode;
    notifyListeners();
  }

  userLogin(UserModel userInfo) async {
    await userService.userLogin(userInfo);
    userStatusCode = userService.userStatusCode;
    notifyListeners();
  }

  setUserData() async {
    username = await storeService.getValues('username');
    email = await storeService.getValues("email");
    notifyListeners();
  }
}
