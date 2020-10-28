import 'package:flutter_app_master/bean/userinfo_entity.dart';

userinfoEntityFromJson(UserinfoEntity data, Map<String, dynamic> json) {
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
		data.data = new UserinfoData().fromJson(json['Data']);
	}
	return data;
}

Map<String, dynamic> userinfoEntityToJson(UserinfoEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['StatusCode'] = entity.statusCode;
	data['Info'] = entity.info;
	data['Count'] = entity.count;
	if (entity.data != null) {
		data['Data'] = entity.data.toJson();
	}
	return data;
}

userinfoDataFromJson(UserinfoData data, Map<String, dynamic> json) {
	if (json['code'] != null) {
		data.code = json['code']?.toString();
	}
	if (json['msg'] != null) {
		data.msg = json['msg']?.toString();
	}
	if (json['count'] != null) {
		data.count = json['count']?.toString();
	}
	if (json['data'] != null) {
		data.data = new List<UserinfoDataData>();
		(json['data'] as List).forEach((v) {
			data.data.add(new UserinfoDataData().fromJson(v));
		});
	}
	return data;
}

Map<String, dynamic> userinfoDataToJson(UserinfoData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['code'] = entity.code;
	data['msg'] = entity.msg;
	data['count'] = entity.count;
	if (entity.data != null) {
		data['data'] =  entity.data.map((v) => v.toJson()).toList();
	}
	return data;
}

userinfoDataDataFromJson(UserinfoDataData data, Map<String, dynamic> json) {
	if (json['Id'] != null) {
		data.id = json['Id']?.toString();
	}
	if (json['UserID'] != null) {
		data.userID = json['UserID']?.toString();
	}
	if (json['NickName'] != null) {
		data.nickName = json['NickName']?.toString();
	}
	if (json['Avator'] != null) {
		data.avator = json['Avator']?.toString();
	}
	if (json['CreateDate'] != null) {
		data.createDate = json['CreateDate']?.toString();
	}
	if (json['LastLoginDate'] != null) {
		data.lastLoginDate = json['LastLoginDate']?.toString();
	}
	if (json['LoginCount'] != null) {
		data.loginCount = json['LoginCount']?.toInt();
	}
	if (json['RemainMoney'] != null) {
		data.remainMoney = json['RemainMoney']?.toDouble();
	}
	if (json['TotalMoney'] != null) {
		data.totalMoney = json['TotalMoney']?.toDouble();
	}
	if (json['FrozenMoney'] != null) {
		data.frozenMoney = json['FrozenMoney']?.toDouble();
	}
	if (json['Type'] != null) {
		data.type = json['Type']?.toString();
	}
	if (json['TopRank'] != null) {
		data.topRank = json['TopRank']?.toString();
	}
	if (json['YnAuth'] != null) {
		data.ynAuth = json['YnAuth'];
	}
	if (json['barCode'] != null) {
		data.barCode = json['barCode'];
	}
	if (json['IsUse'] != null) {
		data.isUse = json['IsUse']?.toString();
	}
	if (json['PassWord'] != null) {
		data.passWord = json['PassWord']?.toString();
	}
	if (json['PayPassWord'] != null) {
		data.payPassWord = json['PayPassWord']?.toString();
	}
	if (json['RoleID'] != null) {
		data.roleID = json['RoleID']?.toInt();
	}
	if (json['RoleName'] != null) {
		data.roleName = json['RoleName']?.toString();
	}
	if (json['AccountID'] != null) {
		data.accountID = json['AccountID']?.toInt();
	}
	if (json['GreenTopRank'] != null) {
		data.greenTopRank = json['GreenTopRank']?.toInt();
	}
	if (json['DistrictCode'] != null) {
		data.districtCode = json['DistrictCode']?.toString();
	}
	if (json['Con'] != null) {
		data.con = json['Con']?.toInt();
	}
	if (json['Longitude'] != null) {
		data.longitude = json['Longitude']?.toString();
	}
	if (json['Dimension'] != null) {
		data.dimension = json['Dimension']?.toString();
	}
	if (json['ServiceTotalOrderNum'] != null) {
		data.serviceTotalOrderNum = json['ServiceTotalOrderNum']?.toString();
	}
	if (json['ServiceComplaintNum'] != null) {
		data.serviceComplaintNum = json['ServiceComplaintNum']?.toString();
	}
	if (json['UnfinishedAmount'] != null) {
		data.unfinishedAmount = json['UnfinishedAmount']?.toDouble();
	}
	if (json['ServiceTotalMoney'] != null) {
		data.serviceTotalMoney = json['ServiceTotalMoney']?.toDouble();
	}
	if (json['CompanyName'] != null) {
		data.companyName = json['CompanyName']?.toString();
	}
	if (json['OrderFee'] != null) {
		data.orderFee = json['OrderFee']?.toDouble();
	}
	if (json['FeeTypes'] != null) {
		data.feeTypes = json['FeeTypes'];
	}
	if (json['DoorFee'] != null) {
		data.doorFee = json['DoorFee']?.toDouble();
	}
	if (json['AgainMoney'] != null) {
		data.againMoney = json['AgainMoney']?.toDouble();
	}
	if (json['PlatformFee'] != null) {
		data.platformFee = json['PlatformFee']?.toDouble();
	}
	if (json['IsOnLine'] != null) {
		data.isOnLine = json['IsOnLine']?.toInt();
	}
	if (json['StartDate'] != null) {
		data.startDate = json['StartDate'];
	}
	if (json['EndDate'] != null) {
		data.endDate = json['EndDate'];
	}
	if (json['ProvinceCode'] != null) {
		data.provinceCode = json['ProvinceCode']?.toString();
	}
	if (json['CityCode'] != null) {
		data.cityCode = json['CityCode']?.toString();
	}
	if (json['AreaCode'] != null) {
		data.areaCode = json['AreaCode']?.toString();
	}
	if (json['Address'] != null) {
		data.address = json['Address']?.toString();
	}
	if (json['DepositMoney'] != null) {
		data.depositMoney = json['DepositMoney']?.toDouble();
	}
	if (json['DepositFrozenMoney'] != null) {
		data.depositFrozenMoney = json['DepositFrozenMoney']?.toDouble();
	}
	if (json['Skills'] != null) {
		data.skills = json['Skills'];
	}
	if (json['IfAuth'] != null) {
		data.ifAuth = json['IfAuth']?.toString();
	}
	if (json['AuthMessage'] != null) {
		data.authMessage = json['AuthMessage']?.toString();
	}
	if (json['ParentUserID'] != null) {
		data.parentUserID = json['ParentUserID'];
	}
	if (json['TrueName'] != null) {
		data.trueName = json['TrueName']?.toString();
	}
	if (json['IDCard'] != null) {
		data.iDCard = json['IDCard']?.toString();
	}
	if (json['Sex'] != null) {
		data.sex = json['Sex']?.toString();
	}
	if (json['Phone'] != null) {
		data.phone = json['Phone']?.toString();
	}
	if (json['emergencyContact'] != null) {
		data.emergencyContact = json['emergencyContact'];
	}
	if (json['teamNumber'] != null) {
		data.teamNumber = json['teamNumber']?.toInt();
	}
	if (json['IsOrNoTruck'] != null) {
		data.isOrNoTruck = json['IsOrNoTruck'];
	}
	if (json['page'] != null) {
		data.page = json['page']?.toInt();
	}
	if (json['limit'] != null) {
		data.limit = json['limit']?.toInt();
	}
	if (json['Version'] != null) {
		data.version = json['Version']?.toInt();
	}
	return data;
}

Map<String, dynamic> userinfoDataDataToJson(UserinfoDataData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['Id'] = entity.id;
	data['UserID'] = entity.userID;
	data['NickName'] = entity.nickName;
	data['Avator'] = entity.avator;
	data['CreateDate'] = entity.createDate;
	data['LastLoginDate'] = entity.lastLoginDate;
	data['LoginCount'] = entity.loginCount;
	data['RemainMoney'] = entity.remainMoney;
	data['TotalMoney'] = entity.totalMoney;
	data['FrozenMoney'] = entity.frozenMoney;
	data['Type'] = entity.type;
	data['TopRank'] = entity.topRank;
	data['YnAuth'] = entity.ynAuth;
	data['barCode'] = entity.barCode;
	data['IsUse'] = entity.isUse;
	data['PassWord'] = entity.passWord;
	data['PayPassWord'] = entity.payPassWord;
	data['RoleID'] = entity.roleID;
	data['RoleName'] = entity.roleName;
	data['AccountID'] = entity.accountID;
	data['GreenTopRank'] = entity.greenTopRank;
	data['DistrictCode'] = entity.districtCode;
	data['Con'] = entity.con;
	data['Longitude'] = entity.longitude;
	data['Dimension'] = entity.dimension;
	data['ServiceTotalOrderNum'] = entity.serviceTotalOrderNum;
	data['ServiceComplaintNum'] = entity.serviceComplaintNum;
	data['UnfinishedAmount'] = entity.unfinishedAmount;
	data['ServiceTotalMoney'] = entity.serviceTotalMoney;
	data['CompanyName'] = entity.companyName;
	data['OrderFee'] = entity.orderFee;
	data['FeeTypes'] = entity.feeTypes;
	data['DoorFee'] = entity.doorFee;
	data['AgainMoney'] = entity.againMoney;
	data['PlatformFee'] = entity.platformFee;
	data['IsOnLine'] = entity.isOnLine;
	data['StartDate'] = entity.startDate;
	data['EndDate'] = entity.endDate;
	data['ProvinceCode'] = entity.provinceCode;
	data['CityCode'] = entity.cityCode;
	data['AreaCode'] = entity.areaCode;
	data['Address'] = entity.address;
	data['DepositMoney'] = entity.depositMoney;
	data['DepositFrozenMoney'] = entity.depositFrozenMoney;
	data['Skills'] = entity.skills;
	data['IfAuth'] = entity.ifAuth;
	data['AuthMessage'] = entity.authMessage;
	data['ParentUserID'] = entity.parentUserID;
	data['TrueName'] = entity.trueName;
	data['IDCard'] = entity.iDCard;
	data['Sex'] = entity.sex;
	data['Phone'] = entity.phone;
	data['emergencyContact'] = entity.emergencyContact;
	data['teamNumber'] = entity.teamNumber;
	data['IsOrNoTruck'] = entity.isOrNoTruck;
	data['page'] = entity.page;
	data['limit'] = entity.limit;
	data['Version'] = entity.version;
	return data;
}