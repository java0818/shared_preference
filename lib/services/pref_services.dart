import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../model/user_model.dart';

class Prefs{
  static String? get user => null;


  // #Name Related
  static  storeName(String name) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("name",name);
  }

  static  Future<String?> loadName() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString("name");
  }

  static Future<bool> removName() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove("name");
  }

  // Name Related
  static void storeUser(User user) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String stringUser = jsonEncode(user);
    prefs.setString("user",stringUser);
  }

  static  Future<User?> loadUser() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? stringUser = prefs.getString(user!);
    if(stringUser == null || stringUser.isEmpty){
      return null;
    }
    Map map = jsonDecode(stringUser);
    return User.fromJson({});
  }

  static Future<bool> removUser() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove("user");
  }


}