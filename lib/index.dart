import 'package:flutter/material.dart';
import 'package:flutter_app_master/pages/page_home.dart';
import 'package:flutter_app_master/pages/page_order.dart';
import 'package:flutter_app_master/utils/ColorsUtils.dart';

import 'pages/page_mine.dart';

class Index extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => IndexState();
}

class IndexState extends State<Index> {
  int currentIndex = 0;
  Widget currentView;
  Map<int, Widget> pageMap = {
    0: HomePage(),
    1: OrderPage(),
    2: MinePage()
  };

  @override
  initState() {
    super.initState();
    this.setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pageMap[this.currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: ColorsUtil.hexToColor('#4874ED'),
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          onTap: (event) {
            this.setState(() {
              this.currentIndex = event;
            });
          },
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Image.asset('assets/home.png',width: 25,height: 25,),
              title: Text('接单区'),
              activeIcon: Image.asset('assets/home_selected.png',width: 25,height: 25,),
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/order.png',width: 25,height: 25,),
              title: Text('工单'),
              activeIcon: Image.asset('assets/order_selected.png',width: 25,height: 25,),
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/mine.png',width: 25,height: 25,),
              title: Text('我的'),
              activeIcon: Image.asset('assets/mine_selected.png',width: 25,height: 25,),
            ),
          ],
        ));
  }
}
