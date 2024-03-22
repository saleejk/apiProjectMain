class UserModel {
  String? email;
  String? username;
  String? password;
  UserModel({this.email, this.username, this.password});
  factory UserModel.fromjson(Map<String, dynamic> json) {
    return UserModel(
        email: json["email"],
        username: json["username"],
        password: json["password"]);
  }
  Map<String, dynamic> tojson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["email"] = email;
    data["username"] = username;
    data["password"] = password;
    return data;
  }
}
