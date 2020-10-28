// ignore_for_file: non_constant_identifier_names
// ignore_for_file: camel_case_types
// ignore_for_file: prefer_single_quotes

// This file is automatically generated. DO NOT EDIT, all your changes would be lost.
import 'package:flutter_app_master/bean/order_count_entity.dart';
import 'package:flutter_app_master/generated/json/order_count_entity_helper.dart';
import 'package:flutter_app_master/bean/login_entity.dart';
import 'package:flutter_app_master/generated/json/login_entity_helper.dart';
import 'package:flutter_app_master/bean/userinfo_entity.dart';
import 'package:flutter_app_master/generated/json/userinfo_entity_helper.dart';
import 'package:flutter_app_master/bean/orderlist_entity.dart';
import 'package:flutter_app_master/generated/json/orderlist_entity_helper.dart';
import 'package:flutter_app_master/bean/new_worker_get_order_list_entity.dart';
import 'package:flutter_app_master/generated/json/new_worker_get_order_list_entity_helper.dart';

class JsonConvert<T> {
	T fromJson(Map<String, dynamic> json) {
		return _getFromJson<T>(runtimeType, this, json);
	}

  Map<String, dynamic> toJson() {
		return _getToJson<T>(runtimeType, this);
  }

  static _getFromJson<T>(Type type, data, json) {
    switch (type) {			case OrderCountEntity:
			return orderCountEntityFromJson(data as OrderCountEntity, json) as T;			case OrderCountData:
			return orderCountDataFromJson(data as OrderCountData, json) as T;			case OrderCountDataItem2:
			return orderCountDataItem2FromJson(data as OrderCountDataItem2, json) as T;			case LoginEntity:
			return loginEntityFromJson(data as LoginEntity, json) as T;			case LoginData:
			return loginDataFromJson(data as LoginData, json) as T;			case LoginDataItem3:
			return loginDataItem3FromJson(data as LoginDataItem3, json) as T;			case UserinfoEntity:
			return userinfoEntityFromJson(data as UserinfoEntity, json) as T;			case UserinfoData:
			return userinfoDataFromJson(data as UserinfoData, json) as T;			case UserinfoDataData:
			return userinfoDataDataFromJson(data as UserinfoDataData, json) as T;			case OrderlistEntity:
			return orderlistEntityFromJson(data as OrderlistEntity, json) as T;			case OrderlistData:
			return orderlistDataFromJson(data as OrderlistData, json) as T;			case OrderlistDataData:
			return orderlistDataDataFromJson(data as OrderlistDataData, json) as T;			case OrderlistDataDataOrderProductModel:
			return orderlistDataDataOrderProductModelFromJson(data as OrderlistDataDataOrderProductModel, json) as T;			case NewWorkerGetOrderListEntity:
			return newWorkerGetOrderListEntityFromJson(data as NewWorkerGetOrderListEntity, json) as T;			case NewWorkerGetOrderListData:
			return newWorkerGetOrderListDataFromJson(data as NewWorkerGetOrderListData, json) as T;			case NewWorkerGetOrderListDataData:
			return newWorkerGetOrderListDataDataFromJson(data as NewWorkerGetOrderListDataData, json) as T;			case NewWorkerGetOrderListDataDataSendOrderList:
			return newWorkerGetOrderListDataDataSendOrderListFromJson(data as NewWorkerGetOrderListDataDataSendOrderList, json) as T;			case NewWorkerGetOrderListDataDataOrderProductModel:
			return newWorkerGetOrderListDataDataOrderProductModelFromJson(data as NewWorkerGetOrderListDataDataOrderProductModel, json) as T;    }
    return data as T;
  }

  static _getToJson<T>(Type type, data) {
		switch (type) {			case OrderCountEntity:
			return orderCountEntityToJson(data as OrderCountEntity);			case OrderCountData:
			return orderCountDataToJson(data as OrderCountData);			case OrderCountDataItem2:
			return orderCountDataItem2ToJson(data as OrderCountDataItem2);			case LoginEntity:
			return loginEntityToJson(data as LoginEntity);			case LoginData:
			return loginDataToJson(data as LoginData);			case LoginDataItem3:
			return loginDataItem3ToJson(data as LoginDataItem3);			case UserinfoEntity:
			return userinfoEntityToJson(data as UserinfoEntity);			case UserinfoData:
			return userinfoDataToJson(data as UserinfoData);			case UserinfoDataData:
			return userinfoDataDataToJson(data as UserinfoDataData);			case OrderlistEntity:
			return orderlistEntityToJson(data as OrderlistEntity);			case OrderlistData:
			return orderlistDataToJson(data as OrderlistData);			case OrderlistDataData:
			return orderlistDataDataToJson(data as OrderlistDataData);			case OrderlistDataDataOrderProductModel:
			return orderlistDataDataOrderProductModelToJson(data as OrderlistDataDataOrderProductModel);			case NewWorkerGetOrderListEntity:
			return newWorkerGetOrderListEntityToJson(data as NewWorkerGetOrderListEntity);			case NewWorkerGetOrderListData:
			return newWorkerGetOrderListDataToJson(data as NewWorkerGetOrderListData);			case NewWorkerGetOrderListDataData:
			return newWorkerGetOrderListDataDataToJson(data as NewWorkerGetOrderListDataData);			case NewWorkerGetOrderListDataDataSendOrderList:
			return newWorkerGetOrderListDataDataSendOrderListToJson(data as NewWorkerGetOrderListDataDataSendOrderList);			case NewWorkerGetOrderListDataDataOrderProductModel:
			return newWorkerGetOrderListDataDataOrderProductModelToJson(data as NewWorkerGetOrderListDataDataOrderProductModel);    }
    return data as T;
  }
  //Go back to a single instance by type
  static _fromJsonSingle(String type, json) {
    switch (type) {			case 'OrderCountEntity':
			return OrderCountEntity().fromJson(json);			case 'OrderCountData':
			return OrderCountData().fromJson(json);			case 'OrderCountDataItem2':
			return OrderCountDataItem2().fromJson(json);			case 'LoginEntity':
			return LoginEntity().fromJson(json);			case 'LoginData':
			return LoginData().fromJson(json);			case 'LoginDataItem3':
			return LoginDataItem3().fromJson(json);			case 'UserinfoEntity':
			return UserinfoEntity().fromJson(json);			case 'UserinfoData':
			return UserinfoData().fromJson(json);			case 'UserinfoDataData':
			return UserinfoDataData().fromJson(json);			case 'OrderlistEntity':
			return OrderlistEntity().fromJson(json);			case 'OrderlistData':
			return OrderlistData().fromJson(json);			case 'OrderlistDataData':
			return OrderlistDataData().fromJson(json);			case 'OrderlistDataDataOrderProductModel':
			return OrderlistDataDataOrderProductModel().fromJson(json);			case 'NewWorkerGetOrderListEntity':
			return NewWorkerGetOrderListEntity().fromJson(json);			case 'NewWorkerGetOrderListData':
			return NewWorkerGetOrderListData().fromJson(json);			case 'NewWorkerGetOrderListDataData':
			return NewWorkerGetOrderListDataData().fromJson(json);			case 'NewWorkerGetOrderListDataDataSendOrderList':
			return NewWorkerGetOrderListDataDataSendOrderList().fromJson(json);			case 'NewWorkerGetOrderListDataDataOrderProductModel':
			return NewWorkerGetOrderListDataDataOrderProductModel().fromJson(json);    }
    return null;
  }

  //empty list is returned by type
  static _getListFromType(String type) {
    switch (type) {			case 'OrderCountEntity':
			return List<OrderCountEntity>();			case 'OrderCountData':
			return List<OrderCountData>();			case 'OrderCountDataItem2':
			return List<OrderCountDataItem2>();			case 'LoginEntity':
			return List<LoginEntity>();			case 'LoginData':
			return List<LoginData>();			case 'LoginDataItem3':
			return List<LoginDataItem3>();			case 'UserinfoEntity':
			return List<UserinfoEntity>();			case 'UserinfoData':
			return List<UserinfoData>();			case 'UserinfoDataData':
			return List<UserinfoDataData>();			case 'OrderlistEntity':
			return List<OrderlistEntity>();			case 'OrderlistData':
			return List<OrderlistData>();			case 'OrderlistDataData':
			return List<OrderlistDataData>();			case 'OrderlistDataDataOrderProductModel':
			return List<OrderlistDataDataOrderProductModel>();			case 'NewWorkerGetOrderListEntity':
			return List<NewWorkerGetOrderListEntity>();			case 'NewWorkerGetOrderListData':
			return List<NewWorkerGetOrderListData>();			case 'NewWorkerGetOrderListDataData':
			return List<NewWorkerGetOrderListDataData>();			case 'NewWorkerGetOrderListDataDataSendOrderList':
			return List<NewWorkerGetOrderListDataDataSendOrderList>();			case 'NewWorkerGetOrderListDataDataOrderProductModel':
			return List<NewWorkerGetOrderListDataDataOrderProductModel>();    }
    return null;
  }

  static M fromJsonAsT<M>(json) {
    String type = M.toString();
    if (json is List && type.contains("List<")) {
      String itemType = type.substring(5, type.length - 1);
      List tempList = _getListFromType(itemType);
      json.forEach((itemJson) {
        tempList
            .add(_fromJsonSingle(type.substring(5, type.length - 1), itemJson));
      });
      return tempList as M;
    } else {
      return _fromJsonSingle(M.toString(), json) as M;
    }
  }
}