import 'package:flutter_app_master/bean/login_entity.dart';

loginEntityFromJson(LoginEntity data, Map<String, dynamic> json) {
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
		data.data = new LoginData().fromJson(json['Data']);
	}
	return data;
}

Map<String, dynamic> loginEntityToJson(LoginEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['StatusCode'] = entity.statusCode;
	data['Info'] = entity.info;
	data['Count'] = entity.count;
	if (entity.data != null) {
		data['Data'] = entity.data.toJson();
	}
	return data;
}

loginDataFromJson(LoginData data, Map<String, dynamic> json) {
	if (json['Item1'] != null) {
		data.item1 = json['Item1'];
	}
	if (json['Item2'] != null) {
		data.item2 = json['Item2']?.toString();
	}
	if (json['Item3'] != null) {
		data.item3 = new LoginDataItem3().fromJson(json['Item3']);
	}
	return data;
}

Map<String, dynamic> loginDataToJson(LoginData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['Item1'] = entity.item1;
	data['Item2'] = entity.item2;
	if (entity.item3 != null) {
		data['Item3'] = entity.item3.toJson();
	}
	return data;
}

loginDataItem3FromJson(LoginDataItem3 data, Map<String, dynamic> json) {
	if (json['UserName'] != null) {
		data.userName = json['UserName']?.toString();
	}
	if (json['NickName'] != null) {
		data.nickName = json['NickName']?.toString();
	}
	if (json['Avator'] != null) {
		data.avator = json['Avator']?.toString();
	}
	if (json['RoleID'] != null) {
		data.roleID = json['RoleID']?.toString();
	}
	if (json['RoleName'] != null) {
		data.roleName = json['RoleName']?.toString();
	}
	if (json['Type'] != null) {
		data.type = json['Type']?.toString();
	}
	if (json['AccountID'] != null) {
		data.accountID = json['AccountID']?.toString();
	}
	if (json['IfAuth'] != null) {
		data.ifAuth = json['IfAuth']?.toString();
	}
	if (json['IsUse'] != null) {
		data.isUse = json['IsUse']?.toString();
	}
	return data;
}

Map<String, dynamic> loginDataItem3ToJson(LoginDataItem3 entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['UserName'] = entity.userName;
	data['NickName'] = entity.nickName;
	data['Avator'] = entity.avator;
	data['RoleID'] = entity.roleID;
	data['RoleName'] = entity.roleName;
	data['Type'] = entity.type;
	data['AccountID'] = entity.accountID;
	data['IfAuth'] = entity.ifAuth;
	data['IsUse'] = entity.isUse;
	return data;
}