import 'package:shared_preferences/shared_preferences.dart';

class SpHelper{
  static Future<String>  getUserName()async{
   SharedPreferences sharedPreferences= await SharedPreferences.getInstance();
   return  sharedPreferences.getString("userName");
  }

}