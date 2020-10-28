import 'package:flutter_app_master/bean/order_count_entity.dart';

orderCountEntityFromJson(OrderCountEntity data, Map<String, dynamic> json) {
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
		data.data = new OrderCountData().fromJson(json['Data']);
	}
	return data;
}

Map<String, dynamic> orderCountEntityToJson(OrderCountEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['StatusCode'] = entity.statusCode;
	data['Info'] = entity.info;
	data['Count'] = entity.count;
	if (entity.data != null) {
		data['Data'] = entity.data.toJson();
	}
	return data;
}

orderCountDataFromJson(OrderCountData data, Map<String, dynamic> json) {
	if (json['Item1'] != null) {
		data.item1 = json['Item1'];
	}
	if (json['Item2'] != null) {
		data.item2 = new OrderCountDataItem2().fromJson(json['Item2']);
	}
	return data;
}

Map<String, dynamic> orderCountDataToJson(OrderCountData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['Item1'] = entity.item1;
	if (entity.item2 != null) {
		data['Item2'] = entity.item2.toJson();
	}
	return data;
}

orderCountDataItem2FromJson(OrderCountDataItem2 data, Map<String, dynamic> json) {
	if (json['Count1'] != null) {
		data.count1 = json['Count1']?.toInt();
	}
	if (json['Count3'] != null) {
		data.count3 = json['Count3']?.toInt();
	}
	if (json['Count2'] != null) {
		data.count2 = json['Count2']?.toInt();
	}
	if (json['Count8'] != null) {
		data.count8 = json['Count8']?.toInt();
	}
	if (json['Count6'] != null) {
		data.count6 = json['Count6']?.toInt();
	}
	if (json['Count5'] != null) {
		data.count5 = json['Count5']?.toInt();
	}
	if (json['Count9'] != null) {
		data.count9 = json['Count9']?.toInt();
	}
	if (json['Count7'] != null) {
		data.count7 = json['Count7']?.toInt();
	}
	if (json['Count4'] != null) {
		data.count4 = json['Count4']?.toInt();
	}
	return data;
}

Map<String, dynamic> orderCountDataItem2ToJson(OrderCountDataItem2 entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['Count1'] = entity.count1;
	data['Count3'] = entity.count3;
	data['Count2'] = entity.count2;
	data['Count8'] = entity.count8;
	data['Count6'] = entity.count6;
	data['Count5'] = entity.count5;
	data['Count9'] = entity.count9;
	data['Count7'] = entity.count7;
	data['Count4'] = entity.count4;
	return data;
}