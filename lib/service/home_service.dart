import 'package:flutter_app_master/api/api.dart';
import 'package:flutter_app_master/bean/new_worker_get_order_list_entity.dart';
import 'package:flutter_app_master/bean/orderlist_entity.dart';
import 'package:flutter_app_master/generated/json/new_worker_get_order_list_entity_helper.dart';
import 'package:flutter_app_master/generated/json/orderlist_entity_helper.dart';
import 'package:flutter_app_master/utils/request_util.dart';

class HomeService {
  static Future<OrderlistEntity> newWorkerGetOrderList(String search, int state,int page, int limit) async {
    var response = await RequestUtil.post(Api.newWorkerGetOrderList, {'Search': search,'State':state,'page':page,'limit':limit});
    return orderlistEntityFromJson(OrderlistEntity(), response);
  }
}
