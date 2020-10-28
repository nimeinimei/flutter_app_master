import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_master/fluro/NavigatorUtil.dart';
import 'package:flutter_app_master/provider/model/ConfigModel.dart';
import 'package:flutter_app_master/provider/store.dart';
import 'package:flutter_app_master/provider/theme_util.dart';
import 'package:flutter_app_master/utils/ColorsUtils.dart';
import 'package:fluttertoast/fluttertoast.dart';

class WalletPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _WalletState();
  }
}

class _WalletState extends State<WalletPage> {
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
            title: Text("我的钱包"),
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
        body: Container(
          child: Column(children: [
            Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                color: Colors.white,
                child: Column(children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text('我的余额（元）'), Text('明细')]),
                  Text(
                    '51220.00',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          height: 26,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: ColorsUtil.hexToColor('#b4b4b4'),width: 1),
                                borderRadius: BorderRadius.all(Radius.circular(13))),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/efficiency.png',
                                  width: 10,
                                  height: 10,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text(
                                    '充值',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            )
                        ),
                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            height: 26,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: ColorsUtil.hexToColor('#b4b4b4'),width: 1),
                                borderRadius: BorderRadius.all(Radius.circular(13))),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/efficiency.png',
                                  width: 10,
                                  height: 10,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text(
                                    '提现',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            )
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    ),
                  )
                ])),
            GestureDetector(
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: 50,
                child: Row(
                  children: [
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Image.asset(
                          'assets/wallet.png',
                          width: 20,
                          height: 20,
                        )),
                    Expanded(child: Text('我的银行卡')),
                    Image.asset(
                      'assets/right.png',
                      width: 20,
                      height: 20,
                    ),
                  ],
                ),
              ),
              onTap: () {
                NavigatorUtil.goMyBankCardListPage(context);
              },
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 50,
              child: Row(
                children: [
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Image.asset(
                        'assets/wallet.png',
                        width: 20,
                        height: 20,
                      )),
                  Expanded(child: Text('累计金额')),
                  Text('￥0.0'),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 50,
              child: Row(
                children: [
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Image.asset(
                        'assets/wallet.png',
                        width: 20,
                        height: 20,
                      )),
                  Expanded(child: Text('待确认金额')),
                  Text('￥0.0'),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 50,
              child: Row(
                children: [
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Image.asset(
                        'assets/wallet.png',
                        width: 20,
                        height: 20,
                      )),
                  Expanded(child: Text('提现中')),
                  Text('￥0.0'),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 50,
              child: Row(
                children: [
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Image.asset(
                        'assets/wallet.png',
                        width: 20,
                        height: 20,
                      )),
                  Expanded(child: Text('保证金')),
                  Text('￥0.0'),
                ],
              ),
            ),
          ]),
          color: ColorsUtil.hexToColor('#F2F2F2'),
          margin: EdgeInsets.symmetric(vertical: 10),
        ));
  }
}
