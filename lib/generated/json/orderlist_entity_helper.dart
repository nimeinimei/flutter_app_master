import 'package:flutter_app_master/bean/orderlist_entity.dart';

orderlistEntityFromJson(OrderlistEntity data, Map<String, dynamic> json) {
	if (json['StatusCode'] != null) {
		data.statusCode = json['StatusCode']?.toInt();
	}
	if (json['Info'] != null) {
		data.info = json['Info']?.toString();
	}
	if (json['Count'] != null) {
		data.count = json['Count']?.toInt();
	}
	if (json['Data'] != null) {
		data.data = new OrderlistData().fromJson(json['Data']);
	}
	return data;
}

Map<String, dynamic> orderlistEntityToJson(OrderlistEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['StatusCode'] = entity.statusCode;
	data['Info'] = entity.info;
	data['Count'] = entity.count;
	if (entity.data != null) {
		data['Data'] = entity.data.toJson();
	}
	return data;
}

orderlistDataFromJson(OrderlistData data, Map<String, dynamic> json) {
	if (json['code'] != null) {
		data.code = json['code']?.toInt();
	}
	if (json['msg'] != null) {
		data.msg = json['msg']?.toString();
	}
	if (json['count'] != null) {
		data.count = json['count']?.toInt();
	}
	if (json['data'] != null) {
		data.data = new List<OrderlistDataData>();
		(json['data'] as List).forEach((v) {
			data.data.add(new OrderlistDataData().fromJson(v));
		});
	}
	if (json['errcode'] != null) {
		data.errcode = json['errcode']?.toString();
	}
	if (json['errorId'] != null) {
		data.errorId = json['errorId']?.toString();
	}
	return data;
}

Map<String, dynamic> orderlistDataToJson(OrderlistData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['code'] = entity.code;
	data['msg'] = entity.msg;
	data['count'] = entity.count;
	if (entity.data != null) {
		data['data'] =  entity.data.map((v) => v.toJson()).toList();
	}
	data['errcode'] = entity.errcode;
	data['errorId'] = entity.errorId;
	return data;
}

orderlistDataDataFromJson(OrderlistDataData data, Map<String, dynamic> json) {
	if (json['OrderID'] != null) {
		data.orderID = json['OrderID']?.toInt();
	}
	if (json['CreateDate'] != null) {
		data.createDate = json['CreateDate']?.toString();
	}
	if (json['UserName'] != null) {
		data.userName = json['UserName']?.toString();
	}
	if (json['Phone'] != null) {
		data.phone = json['Phone']?.toString();
	}
	if (json['Address'] != null) {
		data.address = json['Address']?.toString();
	}
	if (json['TypeID'] != null) {
		data.typeID = json['TypeID']?.toString();
	}
	if (json['TypeName'] != null) {
		data.typeName = json['TypeName']?.toString();
	}
	if (json['Guarantee'] != null) {
		data.guarantee = json['Guarantee']?.toString();
	}
	if (json['SendUser'] != null) {
		data.sendUser = json['SendUser']?.toString();
	}
	if (json['Longitude'] != null) {
		data.longitude = json['Longitude']?.toString();
	}
	if (json['Dimension'] != null) {
		data.dimension = json['Dimension']?.toString();
	}
	if (json['Distance'] != null) {
		data.distance = json['Distance']?.toDouble();
	}
	if (json['DistanceTureOrFalse'] != null) {
		data.distanceTureOrFalse = json['DistanceTureOrFalse'];
	}
	if (json['OrderProductModels'] != null) {
		data.orderProductModels = new List<OrderlistDataDataOrderProductModel>();
		(json['OrderProductModels'] as List).forEach((v) {
			data.orderProductModels.add(new OrderlistDataDataOrderProductModel().fromJson(v));
		});
	}
	if (json['Signs'] != null) {
		data.signs = new List<dynamic>();
		data.signs.addAll(json['Signs']);
	}
	return data;
}

Map<String, dynamic> orderlistDataDataToJson(OrderlistDataData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['OrderID'] = entity.orderID;
	data['CreateDate'] = entity.createDate;
	data['UserName'] = entity.userName;
	data['Phone'] = entity.phone;
	data['Address'] = entity.address;
	data['TypeID'] = entity.typeID;
	data['TypeName'] = entity.typeName;
	data['Guarantee'] = entity.guarantee;
	data['SendUser'] = entity.sendUser;
	data['Longitude'] = entity.longitude;
	data['Dimension'] = entity.dimension;
	data['Distance'] = entity.distance;
	data['DistanceTureOrFalse'] = entity.distanceTureOrFalse;
	if (entity.orderProductModels != null) {
		data['OrderProductModels'] =  entity.orderProductModels.map((v) => v.toJson()).toList();
	}
	if (entity.signs != null) {
		data['Signs'] =  [];
	}
	return data;
}

orderlistDataDataOrderProductModelFromJson(OrderlistDataDataOrderProductModel data, Map<String, dynamic> json) {
	if (json['CategoryName'] != null) {
		data.categoryName = json['CategoryName']?.toString();
	}
	if (json['SubCategoryName'] != null) {
		data.subCategoryName = json['SubCategoryName']?.toString();
	}
	if (json['ProductType'] != null) {
		data.productType = json['ProductType']?.toString();
	}
	if (json['ProdModelName'] != null) {
		data.prodModelName = json['ProdModelName']?.toString();
	}
	if (json['BrandName'] != null) {
		data.brandName = json['BrandName']?.toString();
	}
	return data;
}

Map<String, dynamic> orderlistDataDataOrderProductModelToJson(OrderlistDataDataOrderProductModel entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['CategoryName'] = entity.categoryName;
	data['SubCategoryName'] = entity.subCategoryName;
	data['ProductType'] = entity.productType;
	data['ProdModelName'] = entity.prodModelName;
	data['BrandName'] = entity.brandName;
	return data;
}