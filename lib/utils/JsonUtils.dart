import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'dart:convert';

class JsonUtil {
  //带有首行缩进的Json格式
  static JsonEncoder encoder = JsonEncoder.withIndent('  ');

  /// 单纯的Json格式输出打印
  static void printJson(Object object) {
    try {
      var encoderString = encoder.convert(object);
//       print(encoderString);
      // 不使用print()方法是因为这是单条输出，如果过长无法显示全
      // 所以使用debugPrint()
      debugPrint(encoderString);
      // 下面这语句的效果与debugPrint 相同
      //encoderString.split('\n').forEach((element) => print(element));
    } catch (e) {
      print(e);
    }
  }
  /// 接收Dio请求库返回的Response对象
  static void printRequest(Response response) {
    Map httpLogMap = Map();
    httpLogMap.putIfAbsent("requestUrl", () => "${response.request.uri}");
    httpLogMap.putIfAbsent("requestHeaders", () => response.request.headers);
    httpLogMap.putIfAbsent("requestData", () => response.request.data);
    httpLogMap.putIfAbsent(
        "requestQueryParameters", () => response.request.queryParameters);
    printJson(httpLogMap);
  }
  /// 接收Dio请求库返回的Response对象
  static void printRespond(Response response) {
    Map httpLogMap = Map();
    httpLogMap.putIfAbsent("respondData", () => response.data);

    printJson(httpLogMap);
  }

// 控制台最终输出效果：
//
// I/flutter: {
// I/flutter:   "requestUrl": "http://xxx.xxx.xxx.xxx:xxx/xxx/xxx/xxx?&pageNo=1&pageSize=20",
// I/flutter:   "requestHeaders": {
// I/flutter:     "Token": "xxxxxxxxxxxxxxxx"
// I/flutter:   },
// I/flutter:   "requestQueryParameters": {
// I/flutter:     "pageNo": "1",
// I/flutter:     "pageSize": "20"
// I/flutter:   },
// I/flutter:   "respondData": {
// I/flutter:     "code": 0,
// I/flutter:     "msg": "success",
// I/flutter:     "data": [
// I/flutter:       {
// I/flutter:         "orderId": "xxxxxxxxxxxxxxxxx",
// I/flutter:         "subOrderId": "xxxxxxxxxxxxxxxxxxxx",
// I/flutter:         "orderName": "xxxx",
// I/flutter:         "orderPlacer": "xxxxxxxxxxxxxxxxxx",
// I/flutter:         "orderPlacerNickname": "xxxx",
// I/flutter:         "orderPlacerPortrait": "http:///xxx.xxx.xxx.xxx:xxx/xxx/xxx/imageFile?f=1184671913513226240",
// I/flutter:         "orderPlacerAuth": 2,
// I/flutter:         "projectBudget": "90.00",
// I/flutter:         "projectCycle": "1 天",
// I/flutter:         "firstFigureUrl": "http:///xxx.xxx.xxx.xxx:xxx/xxx/xxx/imageFile?f=1164114892521472000",
// I/flutter:         "orderType": "xxxxxxxxxxxxxxxxx",
// I/flutter:         "participantNumber": 0,
// I/flutter:         "participantPvw": [],
// I/flutter:         "participantInfoPvw": [],
// I/flutter:         "isPause": 0,
// I/flutter:         "appoint": 0,
// I/flutter:         "subOrderSerial": "xxxxxxxxxxxxxxxxx",
// I/flutter:         "orderTime": "2019-11-04 15:31",
// I/flutter:         "endTime": "2019-11-07 15:31"
// I/flutter:       }
// I/flutter:     ]
// I/flutter:   }
// I/flutter: }

}
