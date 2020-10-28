import 'package:flutter_app_master/generated/json/base/json_convert_content.dart';
import 'package:flutter_app_master/generated/json/base/json_filed.dart';

class OrderlistEntity with JsonConvert<OrderlistEntity> {
	@JSONField(name: "StatusCode")
	int statusCode;
	@JSONField(name: "Info")
	String info;
	@JSONField(name: "Count")
	int count;
	@JSONField(name: "Data")
	OrderlistData data;
}

class OrderlistData with JsonConvert<OrderlistData> {
	int code;
	String msg;
	int count;
	List<OrderlistDataData> data;
	String errcode;
	String errorId;
}

class OrderlistDataData with JsonConvert<OrderlistDataData> {
	@JSONField(name: "OrderID")
	int orderID;
	@JSONField(name: "CreateDate")
	String createDate;
	@JSONField(name: "UserName")
	String userName;
	@JSONField(name: "Phone")
	String phone;
	@JSONField(name: "Address")
	String address;
	@JSONField(name: "TypeID")
	String typeID;
	@JSONField(name: "TypeName")
	String typeName;
	@JSONField(name: "Guarantee")
	String guarantee;
	@JSONField(name: "SendUser")
	String sendUser;
	@JSONField(name: "Longitude")
	String longitude;
	@JSONField(name: "Dimension")
	String dimension;
	@JSONField(name: "Distance")
	double distance;
	@JSONField(name: "DistanceTureOrFalse")
	bool distanceTureOrFalse;
	@JSONField(name: "OrderProductModels")
	List<OrderlistDataDataOrderProductModel> orderProductModels;
	@JSONField(name: "Signs")
	List<dynamic> signs;
}

class OrderlistDataDataOrderProductModel with JsonConvert<OrderlistDataDataOrderProductModel> {
	@JSONField(name: "CategoryName")
	String categoryName;
	@JSONField(name: "SubCategoryName")
	String subCategoryName;
	@JSONField(name: "ProductType")
	String productType;
	@JSONField(name: "ProdModelName")
	String prodModelName;
	@JSONField(name: "BrandName")
	String brandName;
}
