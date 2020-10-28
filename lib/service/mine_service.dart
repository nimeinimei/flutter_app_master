import 'package:flutter_app_master/api/api.dart';
import 'package:flutter_app_master/bean/userinfo_entity.dart';
import 'package:flutter_app_master/generated/json/userinfo_entity_helper.dart';
import 'package:flutter_app_master/utils/request_util.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MineService {
  static Future<UserinfoEntity> getUserInfoList() async {
    var sharedPreferences=await SharedPreferences.getInstance();
    var response = await RequestUtil.getInstance()
        .post(Api.getUserInfoList, data: {'UserID': sharedPreferences.getString("userName"),'limit':1});
    return userinfoEntityFromJson(UserinfoEntity(), response.data);
  }
}
