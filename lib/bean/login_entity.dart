import 'package:flutter_app_master/generated/json/base/json_convert_content.dart';
import 'package:flutter_app_master/generated/json/base/json_filed.dart';

class LoginEntity with JsonConvert<LoginEntity> {
	@JSONField(name: "StatusCode")
	int statusCode;
	@JSONField(name: "Info")
	String info;
	@JSONField(name: "Count")
	int count;
	@JSONField(name: "Data")
	LoginData data;
}

class LoginData with JsonConvert<LoginData> {
	@JSONField(name: "Item1")
	bool item1;
	@JSONField(name: "Item2")
	String item2;
	@JSONField(name: "Item3")
	LoginDataItem3 item3;
}

class LoginDataItem3 with JsonConvert<LoginDataItem3> {
	@JSONField(name: "UserName")
	String userName;
	@JSONField(name: "NickName")
	String nickName;
	@JSONField(name: "Avator")
	String avator;
	@JSONField(name: "RoleID")
	String roleID;
	@JSONField(name: "RoleName")
	String roleName;
	@JSONField(name: "Type")
	String type;
	@JSONField(name: "AccountID")
	String accountID;
	@JSONField(name: "IfAuth")
	String ifAuth;
	@JSONField(name: "IsUse")
	String isUse;
}
