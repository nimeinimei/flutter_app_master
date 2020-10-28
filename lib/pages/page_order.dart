import 'package:flutter/material.dart';
import 'package:flutter_app_master/bean/new_worker_get_order_list_entity.dart';
import 'package:flutter_app_master/bean/order_count_entity.dart';
import 'package:flutter_app_master/bean/orderlist_entity.dart';
import 'package:flutter_app_master/fluro/NavigatorUtil.dart';
import 'package:flutter_app_master/service/home_service.dart';
import 'package:flutter_app_master/service/order_service.dart';
import 'package:flutter_app_master/utils/ColorsUtils.dart';
import 'package:flutter_app_master/utils/my_util.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OrderPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _OrderState();
  }
}

class _OrderState extends State<OrderPage> {
  @override
  void dispose() {
    super.dispose();
  }
  bool loading=true;

  var items = new List<OrderlistDataData>();

  var page = 1;
  var limit = 10;

  ///待接单0
  ///待预约1
  ///服务中2
  ///已完结6
  ///待返件8
  ///待审核11
  ///待结算12
  ///急需处理13
  ///明日需处理14
  ///已超时15
  ///待发货16
  var stateTop = [13, 1, 2, 11, 8, 12, 6];
  var stateSub = [13, 14, 15];
  var stateSec = [1, 16];

  var state = 13;

  RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  var myTabs = <Tab>[
    Tab(
      text: '待处理(0)',
    ),
    Tab(
      text: '待预约(0)',
    ),
    Tab(
      text: '待服务(0)',
    ),
    Tab(
      text: '待审核(0)',
    ),
    Tab(
      text: '待返件(0)',
    ),
    Tab(
      text: '待结算(0)',
    ),
    Tab(
      text: '已完结(0)',
    ),
  ];
  var subone = <Widget>[
    Tab(
      text: '急需处理(0)',
    ),
    Tab(
      text: '明日需上门(0)',
    ),
    Tab(
      text: '已超时(0)',
    ),
  ];
  var subtwo = <Widget>[
    Tab(
      text: '未预约(0)',
    ),
    Tab(
      text: '未到货(0)',
    ),
  ];

  var sharedPreferences;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _onRefresh();
  }

  void _onRefresh() async {
    await Future.delayed(Duration(milliseconds: 1000));

    page = 1;
    _navigationBarNumber().then((value){
      if (mounted) {
        setState(() {
          myTabs = <Tab>[
            Tab(
              text: '待处理(${value.count1})',
            ),
            Tab(
              text: '待预约(${value.count2})',
            ),
            Tab(
              text: '待服务(${value.count3})',
            ),
            Tab(
              text: '待审核(${value.count4})',
            ),
            Tab(
              text: '待返件(${value.count5})',
            ),
            Tab(
              text: '待结算(${value.count6})',
            ),
            Tab(
              text: '已完结(${value.count7})',
            ),
          ];
        });
      }
    });
    _newWorkerGetOrderList().then((value) {
      if (mounted) {
        setState(() {
          items = value;
        });
      }
    });
    _refreshController.refreshCompleted();
  }

  void _onLoading() async {
    await Future.delayed(Duration(microseconds: 1000));

    page++;
    _newWorkerGetOrderList().then((value) {
      if (mounted) {
        setState(() {
          items.addAll(value);
        });
      }
    });
    _refreshController.loadComplete();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    Widget tabview = SmartRefresher(
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
//            body = Text("Load Failed!Click retry!");
//          } else {
//            body = Text("No more Data");
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
          : Container(
              color: ColorsUtil.hexToColor('#F2F2F2'),
              child: ListView.builder(
                itemBuilder: buildCard,
                itemCount: items.length,
//        itemExtent: 100.0,
              ),
            ),
    );

    _buildSubview(List<Widget> tabs) {
      return DefaultTabController(
          length: tabs.length,
          child: Container(
              child: Column(
            children: [
              Container(
                color: ColorsUtil.hexToColor('#F2F2F2'),
                padding: EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  height: 30,
                  child: TabBar(
                    isScrollable: false,
                    onTap: (int index) {
                      print('Selected......$index');
                      if (tabs.length == 3) {
                        state = stateSub[index];
                      } else {
                        state = stateSec[index];
                      }
                      _onRefresh();
                    },
                    unselectedLabelColor:
                        Colors.black, //设置未选中时的字体颜色，tabs里面的字体样式优先级最高
                    unselectedLabelStyle:
                        TextStyle(fontSize: 13), //设置未选中时的字体样式，tabs里面的字体样式优先级最高
                    labelColor: ColorsUtil.hexToColor(
                        '#2456ED'), //设置选中时的字体颜色，tabs里面的字体样式优先级最高
                    labelStyle: TextStyle(
                        fontSize: 13.0,
                        fontWeight:
                            FontWeight.bold), //设置选中时的字体样式，tabs里面的字体样式优先级最高
                    indicatorColor: Colors.transparent, //选中下划线的颜色
                    indicatorSize: TabBarIndicatorSize
                        .tab, //选中下划线的长度，label时跟文字内容长度一样，tab时跟一个Tab的长度一样
                    indicator: BoxDecoration(
                      color: ColorsUtil.hexToColor('#E8EEFD'),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    indicatorWeight: 1.0, //选中下划线的高度，值越大高度越高，默认为2。0
//                indicator: BoxDecoration(),//用于设定选中状态下的展示样式
                    tabs: tabs,
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                child: TabBarView(
                  children: tabs.map((Widget tab) {
                    return tabview;
                  }).toList(),
                ),
              ))
            ],
          )));
    }

    return DefaultTabController(
      initialIndex: 0,
      //选项卡长度
      length: myTabs.length,
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
//                title: Text('AppBar标题'),
            //添加选项卡按钮，注意此bottom表示在AppBar的底部，在整个页面上看还是处于顶部区域
            title: TabBar(
              isScrollable: true,
              onTap: (int index) {
                print('Selected......$index');
                state = stateTop[index];
                _onRefresh();
              },
              unselectedLabelColor:
              Colors.black, //设置未选中时的字体颜色，tabs里面的字体样式优先级最高
              unselectedLabelStyle:
              TextStyle(fontSize: 15), //设置未选中时的字体样式，tabs里面的字体样式优先级最高
              labelColor: Colors.black, //设置选中时的字体颜色，tabs里面的字体样式优先级最高
              labelStyle: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold), //设置选中时的字体样式，tabs里面的字体样式优先级最高
              indicatorColor: Colors.transparent, //选中下划线的颜色
              indicatorSize: TabBarIndicatorSize
                  .label, //选中下划线的长度，label时跟文字内容长度一样，tab时跟一个Tab的长度一样
              indicatorWeight: 1.0, //选中下划线的高度，值越大高度越高，默认为2。0
//                indicator: BoxDecoration(),//用于设定选中状态下的展示样式
              tabs: myTabs,
            ),
          ),
          body: TabBarView(
            children: [
              _buildSubview(subone),
              _buildSubview(subtwo),
              tabview,
              tabview,
              tabview,
              tabview,
              tabview,
            ],
          )),
    );
  }

  GestureDetector buildCard(BuildContext c, int i) {
    var order = items[i];
    var prodlist = order.orderProductModels;
    var name = '';
    for (int i = 0; i < prodlist.length; i++) {
      var prod = prodlist[i];
      var str1 = prod.brandName == null ? '' : prod.brandName + '(';
      var str2 = prod.subCategoryName == null ? '' : prod.subCategoryName + ')';
      var str3 = prod.prodModelName == null ? '' : prod.prodModelName + '、';
      var str4 = str1 + str2 + str3;
      name += str4;
    }
    if (name.contains('、')) {
      name = name.substring(0, name.lastIndexOf('、'));
    }
    return GestureDetector(child: Card(
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
                  Image.asset(
                    'assets/copy.png',
                    width: 20,
                    height: 20,
                  )
                ],
              ),
              Divider(height: 16.0, color: Colors.grey),
              //产品
              Row(
                children: [
                  Expanded(
                    child: Text(
                      '$name',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
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
                    border:
                    Border.all(color: Colors.red.withAlpha(60), width: 1.0),
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
                  child: Text(
                    '地址：${order.address}',
                    style: TextStyle(color: Colors.black54),
                  )),
              //距离和时间
              Row(
                children: [
                  Image.asset(
                    'assets/location.png',
                    width: 20,
                    height: 20,
                  ),
                  Text('${order.distance}km'),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/time.png',
                          width: 20,
                          height: 20,
                        ),
                        Text(MyUtil.getTimebefore(order.createDate)),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        )),onTap: (){
      NavigatorUtil.goOrderDetailPage(c);
    },);
}

  Future<List<OrderlistDataData>> _newWorkerGetOrderList() async {
    loading=true;
    sharedPreferences=await SharedPreferences.getInstance();
    var res = await HomeService.newWorkerGetOrderList(
        '', state, page, limit);
    loading=false;
    if (res.statusCode == 200) {
      return res.data.data;
    }
  }
  Future<OrderCountDataItem2> _navigationBarNumber() async {
    sharedPreferences=await SharedPreferences.getInstance();
    var res = await OrderService.navigationBarNumber(
        sharedPreferences.getString("userName"), 1, 1);
    if (res.statusCode == 200) {
      return res.data.item2;
    }
  }
}
