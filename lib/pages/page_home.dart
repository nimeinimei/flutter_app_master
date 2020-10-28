import 'dart:async';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_master/bean/new_worker_get_order_list_entity.dart';
import 'package:flutter_app_master/bean/orderlist_entity.dart';
import 'package:flutter_app_master/service/home_service.dart';
import 'package:flutter_app_master/utils/ColorsUtils.dart';
import 'package:flutter_app_master/utils/my_util.dart';
import 'package:flutter_app_master/widget/LoadingDialog.dart';
import 'package:flutter_app_master/widget/Marquee.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(flexibleSpace: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                alignment: Alignment.bottomCenter,
                width: double.infinity,
                margin: EdgeInsets.only(top: 24),
                padding: EdgeInsets.only(bottom: 10),
                height: 60,
                child:
                Row(
                  children: [
                    Expanded(child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Text('接单区',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold ),),
                        Positioned(child: Image.asset('assets/msg.png',width: 20,height: 20,),right: 15,)
                      ],
                    ))
                    ,
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                height: 40,
                child: Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 10),
                        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                        decoration:BoxDecoration(
                          color: ColorsUtil.hexToColor('#4874ED'),
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),topLeft: Radius.circular(15)),
                        ) ,
                        child: Text('今日新工单:',style: TextStyle(color: Colors.white),)),
                    Expanded(
                        child: Container(
                            margin: EdgeInsets.fromLTRB(0, 5, 10, 5),
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration:BoxDecoration(
                              color: ColorsUtil.hexToColor('#F9F9F9'),
                              borderRadius: BorderRadius.only(bottomRight: Radius.circular(15),topRight: Radius.circular(15)),
                            ) ,
                            child: Marquee(textList: ['必读！职业道德操作准则。','喜迎元旦！'],))
                    )
                  ],
                ),
              ),
            ],
          ),
        ),toolbarHeight: 104,elevation: 0.1,),
        body: Column(
          children: [
            Expanded(
              child: Container(
                color: ColorsUtil.hexToColor('#F2F2F2'),
                child: ListViewRefreshController(),
              ),
            ),
          ],
        ));
  }
}

class ListViewRefreshController extends StatefulWidget {
  @override
  State createState() => new RefreshControViewController();
}

class RefreshControViewController extends State<ListViewRefreshController> {
  var items = new List<OrderlistDataData>();

  var page=1;
  var limit=10;
  bool loading=true;


  RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _onRefresh();
  }

  void _onRefresh() async {
    await Future.delayed(Duration(milliseconds: 1000));

    page=1;
    _newWorkerGetOrderList().then((value)
      {
        if(mounted){
          setState(() {
            items=value;
          });
        }
      }
    );
    _refreshController.refreshCompleted();
  }

  void _onLoading() async {
    await Future.delayed(Duration(microseconds: 1000));

    page++;
    _newWorkerGetOrderList().then((value)
    {
      if(mounted){
        setState(() {
          items.addAll(value);
        });
      }
    }
    );
    _refreshController.loadComplete();
  }

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      enablePullDown: true,
      enablePullUp: true,
      header: MaterialClassicHeader(),
      footer: ClassicFooter(),
//      footer: CustomFooter(
//        builder: (BuildContext context, LoadStatus mode) {
//          Widget body;
//
//          if (mode == LoadStatus.idle) {
//            body = Text('pull up load');
//          } else if (mode == LoadStatus.loading) {
//            body = CupertinoActivityIndicator();
//          } else if (mode == LoadStatus.failed) {
//            body = Text('Load Failed!Click retry!');
//          } else {
//            body = Text('No more Data');
//          }
//
//          return Container(
//            height: 55.0,
//            child: Center(child: body),
//          );
//        },
//      ),
      controller: _refreshController,
      onRefresh: _onRefresh,
      onLoading: _onLoading,
      child: loading ? Center(child: CircularProgressIndicator()) :items.length == 0
          ? Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/v3_nodata.png',width: 100,height: 100,),
              Text('暂无工单',style: TextStyle(color: Colors.grey),),
            ],),
        ),
      )
          : ListView.builder(
        itemBuilder: buildCard,
        itemCount: items.length,
//        itemExtent: 100.0,
      ),
    );
  }

  Card buildCard(BuildContext c,int i) {
    var order=items[i];
    var prodlist=order.orderProductModels;
    var name='全自动波轮洗衣机';
    for(int i=0;i<prodlist.length;i++){
      var prod=prodlist[i];
      var str1=prod.brandName==null?'':prod.brandName+'(';
      var str2=prod.subCategoryName==null?'':prod.subCategoryName+')';
      var str3=prod.prodModelName==null?'':prod.prodModelName+'、';
      var str4=str1+str2+str3;
      name+=str4;
    }
    if (name.contains('、')){
      name=name.substring(0,name.lastIndexOf('、'));
    }
    return Card(
          elevation: 0.0,
          margin: EdgeInsets.fromLTRB(10, 10, 10, 5),
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
//            mainAxisAlignment: ,
              children: [
                //工单号
                Row(
                  children: [
                    Expanded(
                      child: Text('工单号：${order.orderID}'),
                    ),
                    Image.asset('assets/copy.png',width: 20,height: 20,)
                  ],
                ),
                Divider(height: 16.0, color: Colors.grey),
                //产品
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        '$name',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                //标签
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
                //地址
                Container(
//                    height: 30,
                    child: Text('地址：${order.address}',style: TextStyle(color: Colors.black54),)),
                //距离和时间
                Row(
                  children: [
                    Image.asset('assets/location.png',width: 20,height: 20,),
                    Text('${order.distance}km'),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Image.asset('assets/time.png',width: 20,height: 20,),
                          Text(MyUtil.getTimebefore(order.createDate)),
                        ],
                      ),
                    )
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: ButtonBar(
                      buttonPadding: EdgeInsets.all(0.0),
                      alignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OutlineButton(
                          disabledBorderColor: Colors.black,
                          highlightedBorderColor: Colors.black,
                          padding: EdgeInsets.symmetric(horizontal: 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          child: Text(
                            '拒接',
                            style: TextStyle(color: Colors.black),
                          ),
                          onPressed: () {
                            // ...
                          },
                        ),
                        MaterialButton(
                          padding: EdgeInsets.symmetric(horizontal: 50),
                          elevation: 0.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          color: ColorsUtil.hexToColor('#2456ED'),
                          textColor: Colors.white,
                          child: new Text('立即接单'),
                          onPressed: () {
                            // ...
                          },
                        ),
                      ],
                    ))
              ],
            ),
          ));
  }

  Future<List<OrderlistDataData>> _newWorkerGetOrderList() async {
    loading=true;
    var sharedPreferences=await SharedPreferences.getInstance();
    var res = await HomeService.newWorkerGetOrderList('', 0, page, limit);
    loading=false;
    if(res.statusCode==200){
      return res.data.data;
    }
  }
}


