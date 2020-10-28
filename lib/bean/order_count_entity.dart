import 'package:flutter_app_master/generated/json/base/json_convert_content.dart';
import 'package:flutter_app_master/generated/json/base/json_filed.dart';

class OrderCountEntity with JsonConvert<OrderCountEntity> {
	@JSONField(name: "StatusCode")
	int statusCode;
	@JSONField(name: "Info")
	String info;
	@JSONField(name: "Count")
	int count;
	@JSONField(name: "Data")
	OrderCountData data;
}

class OrderCountData with JsonConvert<OrderCountData> {
	@JSONField(name: "Item1")
	bool item1;
	@JSONField(name: "Item2")
	OrderCountDataItem2 item2;
}

class OrderCountDataItem2 with JsonConvert<OrderCountDataItem2> {
	@JSONField(name: "Count1")
	int count1;
	@JSONField(name: "Count3")
	int count3;
	@JSONField(name: "Count2")
	int count2;
	@JSONField(name: "Count8")
	int count8;
	@JSONField(name: "Count6")
	int count6;
	@JSONField(name: "Count5")
	int count5;
	@JSONField(name: "Count9")
	int count9;
	@JSONField(name: "Count7")
	int count7;
	@JSONField(name: "Count4")
	int count4;
}
