import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_master/pages/login/page_login.dart';
import 'package:flutter_app_master/pages/splash_page.dart';
import 'package:flutter_app_master/provider/store.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'fluro/application.dart';
import 'fluro/routes.dart';

void main() {
  // 注册 fluro routes
  Router router =Router();
  Routes.configureRoutes(router);
  Application.router=router;
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    ErrorWidget.builder = (FlutterErrorDetails errorDetails) {
      return getErrorWidget(context, errorDetails);//处理全局错误页面
    };
    return
      /*Provider配置*/
      Store.init(
          context: context,
          //配置全局刷新样式
          child:RefreshConfiguration(
              hideFooterWhenNotFull: true, //未满屏禁止上拉加载
              child: MaterialApp(
                debugShowCheckedModeBanner: false,
                home: SplashPage(),
                /*生成路由*/
                onGenerateRoute: Application.router.generator,
              ))
      );

  }
  Widget getErrorWidget(BuildContext context, FlutterErrorDetails error) {
    return Center(
      child: Text(
        "页面加载错误，请联系管理员!",
        style: TextStyle(
          color: Colors.blue,
          fontSize: 14,
        ),
      ),
    );
  }
}