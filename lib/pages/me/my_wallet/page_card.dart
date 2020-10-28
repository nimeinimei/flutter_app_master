import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_master/fluro/NavigatorUtil.dart';
import 'package:flutter_app_master/provider/model/ConfigModel.dart';
import 'package:flutter_app_master/provider/store.dart';
import 'package:flutter_app_master/provider/theme_util.dart';
import 'package:flutter_app_master/utils/ColorsUtils.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CardPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CardState();
  }
}

class _CardState extends State<CardPage> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
            //导航栏
            title: Text("我的银行卡"),
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.white), //自定义图标
              onPressed: () {
                NavigatorUtil.goBack(context);
              },
            ),
            actions: <Widget>[
              //导航栏右侧菜单
              IconButton(icon: Icon(Icons.share), onPressed: () {}),
            ],
            flexibleSpace: Store.connect<ConfigModel>(
                builder: (context, ConfigModel snapshot, child) {
              return Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: ThemeUtil.setActionBar(snapshot.theme))),
              );
            })),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                padding: EdgeInsets.all(5.0),
                itemBuilder: name,
              ),
            ),
            Container(
                margin: EdgeInsets.all(10),
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.blue,width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Center(
                    child: Text(
                  '添加',
                  style: TextStyle(color: Colors.blue),
                )))
          ],
        ));
  }

  Widget name(BuildContext context, int index) {
    return Container(
      height: 140,
      width: double.infinity,
      child: Card(
        color: Colors.orange,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(20, 10, 20, 30),
                child: Row(
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      margin: EdgeInsets.only(right: 15),
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/lion.jpeg'),
                        radius: 10,
                      ),
                    ),
                    Text('中国工商银行',
                        style: TextStyle(color: Colors.white, fontSize: 16))
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 60),
                  child: Text('**** **** **** 0001',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)))
            ],
          ),
        ),
      ),
    );
  }
}
