import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:visit_jordan/models/genral_response.dart';
import 'package:visit_jordan/models/user_info.dart';
import 'package:visit_jordan/utilities/Utilities.dart';

class LoginApi {
  Future<UserInfo> login(String email, String password) async {
    var response = await http.post("${Utilities.baseUrl}Login.php",
        body: {"email": email, "password": password});

    var jsonData = jsonDecode(response.body);
    UserInfo user = UserInfo();

    if (response.statusCode == 200) {
      user.email = jsonData["email"];
      user.name = jsonData["name"];
      user.id = jsonData["id"];

      // SharedPreferences preferences = await SharedPreferences.getInstance();
      // preferences.setString('id', jsonData["id"]);
    } else {
      user.id = null;
      user.name = null;
      user.email = null;
    }

    return user;
  }
}
