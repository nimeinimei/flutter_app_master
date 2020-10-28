
import 'package:flutter/material.dart';
import 'package:flutter_app_master/fluro/NavigatorUtil.dart';
import 'package:flutter_app_master/manager/resource_mananger.dart';
import 'package:flutter_app_master/provider/model/ConfigModel.dart';
import 'package:flutter_app_master/provider/store.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SplashPage();
  }
}
class _SplashPage extends State<SplashPage>{

  _getTheme() async{
    SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
    if(sharedPreferences.getString("Theme")==null){
      sharedPreferences.setString("Theme", "blue");
    }
    Store.value<ConfigModel>(context)
        .initTheme(sharedPreferences.getString("Theme"));
  }

  @override
  void initState() {
    _getTheme();
    //2秒后跳到主页面
    Observable.timer(0, Duration(seconds: 2)).listen((_){
     NavigatorUtil.goLoginMainPage(context);
   });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:Container(
        width: double.infinity,
        height: double.infinity,
        child:Image.asset(ImageHelper.wrapAssets("icon_new.png"),
            fit: BoxFit.fill),)



    );
  }



}