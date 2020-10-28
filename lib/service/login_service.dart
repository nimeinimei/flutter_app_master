import 'package:flutter_app_master/api/api.dart';
import 'package:flutter_app_master/bean/login_entity.dart';
import 'package:flutter_app_master/generated/json/login_entity_helper.dart';
import 'package:flutter_app_master/utils/request_util.dart';

class LoginService {
  static Future<LoginEntity> login(String username, String pwd) async {
    var response = await RequestUtil.getInstance()
        .post(Api.login, data: {'userName': username,'passWord':pwd,'RoleType':7});
    return loginEntityFromJson(LoginEntity(), response.data);
  }
}
