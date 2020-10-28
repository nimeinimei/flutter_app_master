import 'package:flutter_app_master/api/api.dart';
import 'package:flutter_app_master/bean/order_count_entity.dart';
import 'package:flutter_app_master/utils/request_util.dart';
import 'package:flutter_app_master/generated/json/order_count_entity_helper.dart';

class OrderService {
  static Future<OrderCountEntity> navigationBarNumber(String userId, int page, int limit) async {
    var response = await RequestUtil.post(Api.navigationBarNumber, {'UserID': userId,'page':page,'limit':limit});
    return orderCountEntityFromJson(OrderCountEntity(), response);
  }
}
