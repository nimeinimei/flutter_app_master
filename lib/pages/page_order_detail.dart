import 'package:flutter/material.dart';
import 'package:flutter_app_master/fluro/NavigatorUtil.dart';
import 'package:flutter_app_master/provider/model/ConfigModel.dart';
import 'package:flutter_app_master/provider/store.dart';
import 'package:flutter_app_master/provider/theme_util.dart';
import 'package:flutter_app_master/utils/ColorsUtils.dart';

class OrderDetailPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _OrderDetailState();
  }
}

class _OrderDetailState extends State<OrderDetailPage> {
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
          title: Text("工单详情"),
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
      body: ListView(
        children: [
          Container(
            color: ColorsUtil.hexToColor('#f2f2f2'),
            child: Column(
              children: [
                buildContainer_base(),
                buildContainer_user(),
                buildContainer_prodlist(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  ///基本信息
  Container buildContainer_base() {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.all(10),
        color: Colors.white,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('基本信息',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                Image.asset(
                  'assets/copy.png',
                  width: 10,
                  height: 10,
                )
              ],
            ),
            Divider(),
            Row(
              children: [
                Container(
                  width: 60,
                  height: 20,
                  margin: EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.red.withAlpha(60), width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Center(
                    child: Text(
                      '保内维修',
                      style: TextStyle(fontSize: 10, color: Colors.red),
                    ),
                  ),
                ),
                Container(
                  width: 60,
                  height: 20,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.red.withAlpha(60), width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Center(
                    child: Text(
                      '服务中',
                      style: TextStyle(fontSize: 10, color: Colors.red),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  '工单编号：',
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
                Text(
                  '2000008730',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  '发单时间：',
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
                Text(
                  '2020-10-26 10：00',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  '预约时间：',
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
                Text(
                  '2020-10-26 10：00',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
          ],
        ));
  }

  ///产品列表信息
  Container buildContainer_prodlist() {
    return Container(
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.all(10),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('产品信息',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                Image.asset(
                  'assets/copy.png',
                  width: 10,
                  height: 10,
                )
              ],
            ),
            Divider(),
            Column(
              children: [
                buildContainer_prod(),
                buildContainer_prod(),
              ],
            ),
          ],
        ));
  }

  ///单个产品信息
  Container buildContainer_prod() {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(10),
      color: ColorsUtil.hexToColor('#f2f2f2'),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('全自动波轮洗衣机',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('资料',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                  Image.asset(
                    'assets/right.png',
                    width: 10,
                    height: 10,
                  )
                ],
              ),
            ],
          ),
          Row(
            children: [
              Text(
                '产品品牌：',
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
              Text(
                '日普',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                '产品类型：',
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
              Text(
                '洗衣机',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                '产品规格：',
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
              Text(
                '全自动波轮洗衣机',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                '产品型号：',
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
              Text(
                'QB75-2010',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '服务要求：',
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
              Expanded(
                child: Text(
                  '2020-07-08 不制冷 请师傅在保修卡上填写维修记录并和机器条码拍照上传，要求照片清晰，没照片不结算，如遇小冰箱（BCD开头）压缩机故障不修，开鉴定处理-01',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '配件进度',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Divider(),
              Column(
                children: [
                  Text(
                    '配件单号（2000032117-F4811）：压缩机x1(厂家寄件)---已发货',
                    style: TextStyle(fontSize: 14, color: Colors.blue),
                  ),
                  Text(
                    '配件单号（2000032117-F4812）：压缩机x1(厂家寄件)---已完结',
                    style: TextStyle(fontSize: 14, color: Colors.blue),
                  ),
                  Text(
                    '配件单号（2000032117-F4813）：电机x1(厂家寄件)---待审核',
                    style: TextStyle(fontSize: 14, color: Colors.blue),
                  ),
                  Text(
                    '配件单号（2000032117-F4814）：水位传感器开关x1(厂家寄件)---待返件',
                    style: TextStyle(fontSize: 14, color: Colors.blue),
                  ),
                ],
              ),
            ],
          ),
          Container(
              margin: EdgeInsets.only(top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('完结信息',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                  Divider(),
                  Row(
                    children: [
                      Text(
                        '鉴定结果：',
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                      Text(
                        '换电机',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '服务说明：',
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                      Text(
                        '完成',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '条形码：',
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                      Text(
                        '123456546847ASDGHJ',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '完结图片：',
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            child: Image.asset(
                              'assets/lion.jpeg',
                              width: 40,
                              height: 40,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            child: Image.asset(
                              'assets/lion.jpeg',
                              width: 40,
                              height: 40,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            child: Image.asset(
                              'assets/lion.jpeg',
                              width: 40,
                              height: 40,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '试机视频：',
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/lion.jpeg',
                              width: 40,
                              height: 40,
                              fit: BoxFit.fill,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }

  ///用户信息
  Container buildContainer_user() {
    return Container(
        padding: EdgeInsets.all(10),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('用户信息',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                Image.asset(
                  'assets/copy.png',
                  width: 10,
                  height: 10,
                )
              ],
            ),
            Divider(),
            Row(
              children: [
                Text(
                  '张三',
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    '18265485658',
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ),
              ],
            ),
            Text(
              '河南省三门峡市湖滨区和平路与上阳路交叉口一中对面河南省三门峡市湖滨区和平路与上阳路交叉口一中对面',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            )
          ],
        ));
  }
}
