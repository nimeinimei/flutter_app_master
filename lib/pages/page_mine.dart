import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_master/bean/userinfo_entity.dart';
import 'package:flutter_app_master/fluro/NavigatorUtil.dart';
import 'package:flutter_app_master/service/mine_service.dart';
import 'package:flutter_app_master/widget/rating_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MinePage extends StatefulWidget {
  @override
  MinePageState createState() => new MinePageState();
}

class MinePageState extends State<MinePage> {
  UserinfoDataData userinfo;
  String auth = '未认证';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getUserInfoList().then((value) {
      setState(() {
        userinfo = value;
        if (userinfo.ifAuth == null) {
          auth = '未认证';
        } else if (userinfo.ifAuth == '1') {
          auth = '已认证';
        } else if (userinfo.ifAuth == '-1') {
          auth = '认证未通过审核';
        } else if (userinfo.ifAuth == '0') {
          auth = '认证审核中';
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: userinfo == null
          ? Center(child: CircularProgressIndicator())
          : ListView(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(20),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('assets/lion.jpeg'),
                              radius: 40,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${userinfo.trueName}',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                child: RatingBar(
                                  value: double.parse(userinfo.topRank),
                                  size: 20,
                                  padding: 2,
                                  nomalImage: 'assets/star_normal.png',
                                  selectImage: 'assets/star.png',
                                  selectAble: false,
//                          onRatingUpdate: (value) {
//                            ratingValue = value;
//                            setState(() {
//
//                            });
//                          },
                                  maxRating: 5,
                                  count: 5,
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    child: Text(
                                      auth,
                                      style: TextStyle(
                                          color: Colors.yellow, fontSize: 10),
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 3),
                                  ),
                                  Text('(认证后可提升客户对您的信任度)',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 10)),
                                ],
                              )
                            ],
                          ),
                          Image.asset(
                            'assets/right.png',
                            width: 20,
                            height: 20,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/efficiency.png',
                                width: 20,
                                height: 20,
                              ),
                              Text(
                                '效率分(100)',
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/quality.png',
                                width: 20,
                                height: 20,
                              ),
                              Text('质量分(100)', style: TextStyle(fontSize: 10)),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/complete.png',
                                width: 20,
                                height: 20,
                              ),
                              Text('完成量(${userinfo.serviceTotalOrderNum})',
                                  style: TextStyle(fontSize: 10)),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
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
                            Expanded(child: Text('我的钱包')),
                            Image.asset(
                              'assets/right.png',
                              width: 20,
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        NavigatorUtil.goMyWalletPage(context);
                      },
                    ),
                    GestureDetector(
                      child: Container(
                        color: Colors.white,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        height: 50,
                        child: Row(
                          children: [
                            Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Image.asset(
                                  'assets/subaccount.png',
                                  width: 20,
                                  height: 20,
                                )),
                            Expanded(child: Text('子账号管理')),
                            Image.asset(
                              'assets/right.png',
                              width: 20,
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        NavigatorUtil.goOrderDetailPage(context);
                      },
                    ),
                    Divider(
                      height: 1,
                    ),
                    GestureDetector(
                      child: Container(
                        color: Colors.white,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        height: 50,
                        child: Row(
                          children: [
                            Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Image.asset(
                                  'assets/code.png',
                                  width: 20,
                                  height: 20,
                                )),
                            Expanded(child: Text('分享朋友成为师傅')),
                            Image.asset(
                              'assets/right.png',
                              width: 20,
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        NavigatorUtil.goOrderDetailPage(context);
                      },
                    ),
                    Divider(
                      height: 1,
                    ),
                    GestureDetector(
                      child: Container(
                        color: Colors.white,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        height: 50,
                        child: Row(
                          children: [
                            Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Image.asset(
                                  'assets/feedback.png',
                                  width: 20,
                                  height: 20,
                                )),
                            Expanded(child: Text('意见反馈')),
                            Image.asset(
                              'assets/right.png',
                              width: 20,
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        NavigatorUtil.goFeedBackPage(context);
                      },
                    ),
                    Divider(
                      height: 1,
                    ),
                    GestureDetector(
                      child: Container(
                        color: Colors.white,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        height: 50,
                        child: Row(
                          children: [
                            Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Image.asset(
                                  'assets/service.png',
                                  width: 20,
                                  height: 20,
                                )),
                            Expanded(child: Text('联系客服')),
                            Image.asset(
                              'assets/right.png',
                              width: 20,
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        NavigatorUtil.goOrderDetailPage(context);
                      },
                    ),
                    Divider(
                      height: 1,
                    ),
                    GestureDetector(
                      child: Container(
                        color: Colors.white,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        height: 50,
                        child: Row(
                          children: [
                            Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Image.asset(
                                  'assets/about_us.png',
                                  width: 20,
                                  height: 20,
                                )),
                            Expanded(child: Text('关于我们')),
                            Image.asset(
                              'assets/right.png',
                              width: 20,
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        NavigatorUtil.goAboutMePage(context);
                      },
                    ),
                    Divider(
                      height: 1,
                    ),
                    GestureDetector(
                      child: Container(
                        color: Colors.white,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        height: 50,
                        child: Row(
                          children: [
                            Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Image.asset(
                                  'assets/setting.png',
                                  width: 20,
                                  height: 20,
                                )),
                            Expanded(child: Text('设置')),
                            Image.asset(
                              'assets/right.png',
                              width: 20,
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        NavigatorUtil.goSettingPage(context);
                      },
                    ),
                  ],
                )
              ],
            ),
    );
  }

  Future<UserinfoDataData> _getUserInfoList() async {
    var sharedPreferences = await SharedPreferences.getInstance();
    var res = await MineService.getUserInfoList();
    if (res.statusCode == 200) {
      return res.data.data[0];
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void didUpdateWidget(MinePage oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
}
