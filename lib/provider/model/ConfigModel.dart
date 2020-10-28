import 'package:flutter/foundation.dart';
import 'package:flutter_app_master/provider/object/ConfigInfo.dart';
class ConfigModel extends ConfigInfo with ChangeNotifier{
  ConfigInfo _configInfo =ConfigInfo();

  String get theme=>_configInfo.theme;
/*初始化主题*/
  void initTheme(String theme){
    _configInfo.theme=theme;
    notifyListeners();
  }

  /*更改主题*/
  void changeTheme(String theme){
    if(_configInfo.theme!=theme){
      _configInfo.theme=theme;
      notifyListeners();
    }

  }

}