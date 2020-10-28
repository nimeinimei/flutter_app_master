import 'package:flutter/material.dart' show BuildContext;
import 'package:flutter_app_master/provider/model/ConfigModel.dart';
import 'package:provider/provider.dart' show ChangeNotifierProvider, MultiProvider, Consumer, Provider;

class Store {
  static BuildContext context;

  //  我们将会在main.dart中runAPP实例化init
  static init({context,child}){
    return MultiProvider(
        providers:[//需要管理多个状态只需要在providers添加对应的状态
          ChangeNotifierProvider(builder: (_)=>ConfigModel())
        ],
      child: child,
    );
  }

// 通过Provider.value<T>(context)获取状态数据
static T value<T>(context){
    return Provider.of(context);
}

//通过Consumer获取状态数据
static Consumer connect<T>({builder,child}){
    return Consumer<T>(builder: builder,child: child);
}

}