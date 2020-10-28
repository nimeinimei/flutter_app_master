import 'package:flutter/material.dart';
import 'package:flutter_app_master/fluro/NavigatorUtil.dart';
import 'package:flutter_app_master/manager/resource_mananger.dart';
import 'package:flutter_app_master/provider/model/ConfigModel.dart';
import 'package:flutter_app_master/provider/store.dart';
import 'package:flutter_app_master/provider/theme_util.dart';

class AboutMePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AboutMePage();
  }
}

class _AboutMePage extends State<AboutMePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "关于我们",
          style: TextStyle(fontSize: 15, color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white), //自定义图标
          onPressed: () {
            NavigatorUtil.goBack(context);
          },
        ),
        flexibleSpace: Store.connect<ConfigModel>(
            builder: (context, ConfigModel snapshot, child) {
          return Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: ThemeUtil.setActionBar(snapshot.theme))),
          );
        }),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              color: Color.fromARGB(255, 240, 240, 240),
              alignment: Alignment.center,
              height: 100,
              child: Image.asset(ImageHelper.wrapAssets("app.png"),
                  width: 50, height: 50),
            ),

            /*版本号*/
            Container(
              height: 58,
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(color: Colors.grey, width: 0.2),
                      bottom: BorderSide(color: Colors.grey, width: 0.2))),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text("当前版本"),
                  ),
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.only(right: 10),
                    alignment: Alignment.centerRight,
                    child: Text("v1.0"),
                  ))
                ],
              ),
            ),

            /*官网地址*/
            Container(
              height: 58,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.grey, width: 0.2))),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text("官方网站"),
                  ),
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.only(right: 10),
                    alignment: Alignment.centerRight,
                    child: Store.connect<ConfigModel>(
                        builder: (context, ConfigModel snapshot, child) {
                      return Text("www.xigyu.com",
                          style: TextStyle(
                              color: ThemeUtil.SetFontColor(snapshot.theme)));
                    }),
                  ))
                ],
              ),
            ),
            /*联系我们*/
            Container(
              height: 58,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.grey, width: 0.2))),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text("联系我们"),
                  ),
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.only(right: 10),
                    alignment: Alignment.centerRight,
                    child: Text("400-6262-365"),
                  ))
                ],
              ),
            ),

            /*用户协议*/
            GestureDetector(
              child: Container(
                height: 58,
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.grey, width: 0.2))),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text("用户协议"),
                    ),
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.only(right: 10),
                      alignment: Alignment.centerRight,
                      child: Image.asset(
                          ImageHelper.wrapAssets("right_arrow.png"),
                          width: 18,
                          height: 18),
                    ))
                  ],
                ),
              ),
              onTap: () {
                NavigatorUtil.goWebPage(
                    context, "https://admin.xigyu.com/Agreement", "用户协议");
              },
            ),

            /*版权所有*/
            Container(
              height: 58,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.grey, width: 0.2))),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text("版权所有"),
                  ),
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.only(right: 10),
                    alignment: Alignment.centerRight,
                    child: Text("宁波正海科技有限公司"),
                  ))
                ],
              ),
            ),

            /*意见反馈*/
            GestureDetector(
              child: Container(
                height: 58,
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.grey, width: 0.2))),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text("意见反馈"),
                    ),
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.only(right: 10),
                      alignment: Alignment.centerRight,
                      child: Image.asset(
                          ImageHelper.wrapAssets("right_arrow.png"),
                          width: 18,
                          height: 18),
                    ))
                  ],
                ),
              ),
              onTap: () {
                NavigatorUtil.goFeedBackPage(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
