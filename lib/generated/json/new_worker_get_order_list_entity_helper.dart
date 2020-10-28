import 'package:flutter_app_master/bean/new_worker_get_order_list_entity.dart';

newWorkerGetOrderListEntityFromJson(NewWorkerGetOrderListEntity data, Map<String, dynamic> json) {
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
		data.data = new NewWorkerGetOrderListData().fromJson(json['Data']);
	}
	return data;
}

Map<String, dynamic> newWorkerGetOrderListEntityToJson(NewWorkerGetOrderListEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['StatusCode'] = entity.statusCode;
	data['Info'] = entity.info;
	data['Count'] = entity.count;
	if (entity.data != null) {
		data['Data'] = entity.data.toJson();
	}
	return data;
}

newWorkerGetOrderListDataFromJson(NewWorkerGetOrderListData data, Map<String, dynamic> json) {
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
		data.data = new List<NewWorkerGetOrderListDataData>();
		(json['data'] as List).forEach((v) {
			data.data.add(new NewWorkerGetOrderListDataData().fromJson(v));
		});
	}
	return data;
}

Map<String, dynamic> newWorkerGetOrderListDataToJson(NewWorkerGetOrderListData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['code'] = entity.code;
	data['msg'] = entity.msg;
	data['count'] = entity.count;
	if (entity.data != null) {
		data['data'] =  entity.data.map((v) => v.toJson()).toList();
	}
	return data;
}

newWorkerGetOrderListDataDataFromJson(NewWorkerGetOrderListDataData data, Map<String, dynamic> json) {
	if (json['Id'] != null) {
		data.id = json['Id']?.toInt();
	}
	if (json['OrderID'] != null) {
		data.orderID = json['OrderID']?.toInt();
	}
	if (json['TypeID'] != null) {
		data.typeID = json['TypeID']?.toInt();
	}
	if (json['TypeName'] != null) {
		data.typeName = json['TypeName']?.toString();
	}
	if (json['SystemSendUser'] != null) {
		data.systemSendUser = json['SystemSendUser'];
	}
	if (json['picture'] != null) {
		data.picture = json['picture'];
	}
	if (json['SubTypeID'] != null) {
		data.subTypeID = json['SubTypeID']?.toInt();
	}
	if (json['Frozen'] != null) {
		data.frozen = json['Frozen']?.toDouble();
	}
	if (json['SubTypeName'] != null) {
		data.subTypeName = json['SubTypeName'];
	}
	if (json['CategoryID'] != null) {
		data.categoryID = json['CategoryID']?.toInt();
	}
	if (json['CategoryName'] != null) {
		data.categoryName = json['CategoryName'];
	}
	if (json['SubCategoryID'] != null) {
		data.subCategoryID = json['SubCategoryID']?.toInt();
	}
	if (json['SubCategoryName'] != null) {
		data.subCategoryName = json['SubCategoryName'];
	}
	if (json['Memo'] != null) {
		data.memo = json['Memo'];
	}
	if (json['BrandID'] != null) {
		data.brandID = json['BrandID']?.toInt();
	}
	if (json['BrandName'] != null) {
		data.brandName = json['BrandName'];
	}
	if (json['SendAddress'] != null) {
		data.sendAddress = json['SendAddress'];
	}
	if (json['ProductType'] != null) {
		data.productType = json['ProductType'];
	}
	if (json['ProductTypeID'] != null) {
		data.productTypeID = json['ProductTypeID']?.toInt();
	}
	if (json['Num'] != null) {
		data.num = json['Num']?.toInt();
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
	if (json['DistrictCode'] != null) {
		data.districtCode = json['DistrictCode']?.toString();
	}
	if (json['WarrantyOrderId'] != null) {
		data.warrantyOrderId = json['WarrantyOrderId'];
	}
	if (json['ProvinceName'] != null) {
		data.provinceName = json['ProvinceName']?.toString();
	}
	if (json['CityName'] != null) {
		data.cityName = json['CityName']?.toString();
	}
	if (json['AreaName'] != null) {
		data.areaName = json['AreaName']?.toString();
	}
	if (json['DistrictName'] != null) {
		data.districtName = json['DistrictName']?.toString();
	}
	if (json['Address'] != null) {
		data.address = json['Address']?.toString();
	}
	if (json['FullAddress'] != null) {
		data.fullAddress = json['FullAddress']?.toString();
	}
	if (json['Longitude'] != null) {
		data.longitude = json['Longitude']?.toString();
	}
	if (json['Dimension'] != null) {
		data.dimension = json['Dimension']?.toString();
	}
	if (json['UserID'] != null) {
		data.userID = json['UserID']?.toString();
	}
	if (json['ComID'] != null) {
		data.comID = json['ComID'];
	}
	if (json['Guarantee'] != null) {
		data.guarantee = json['Guarantee']?.toString();
	}
	if (json['UserName'] != null) {
		data.userName = json['UserName']?.toString();
	}
	if (json['Phone'] != null) {
		data.phone = json['Phone']?.toString();
	}
	if (json['CreateDate'] != null) {
		data.createDate = json['CreateDate']?.toString();
	}
	if (json['AudDate'] != null) {
		data.audDate = json['AudDate']?.toString();
	}
	if (json['ReceiveOrderDate'] != null) {
		data.receiveOrderDate = json['ReceiveOrderDate'];
	}
	if (json['RepairCompleteDate'] != null) {
		data.repairCompleteDate = json['RepairCompleteDate'];
	}
	if (json['AppraiseDate'] != null) {
		data.appraiseDate = json['AppraiseDate'];
	}
	if (json['State'] != null) {
		data.state = json['State']?.toString();
	}
	if (json['FakerTime'] != null) {
		data.fakerTime = json['FakerTime']?.toInt();
	}
	if (json['AffiliatedPerson'] != null) {
		data.affiliatedPerson = json['AffiliatedPerson']?.toInt();
	}
	if (json['AlreadyArrived'] != null) {
		data.alreadyArrived = json['AlreadyArrived'];
	}
	if (json['CurrentOperator'] != null) {
		data.currentOperator = json['CurrentOperator']?.toInt();
	}
	if (json['LastReturnVisitDate'] != null) {
		data.lastReturnVisitDate = json['LastReturnVisitDate'];
	}
	if (json['StateHtml'] != null) {
		data.stateHtml = json['StateHtml']?.toString();
	}
	if (json['Extra'] != null) {
		data.extra = json['Extra'];
	}
	if (json['ExtraTime'] != null) {
		data.extraTime = json['ExtraTime'];
	}
	if (json['IsCall'] != null) {
		data.isCall = json['IsCall'];
	}
	if (json['ExtraFee'] != null) {
		data.extraFee = json['ExtraFee']?.toDouble();
	}
	if (json['IsUse'] != null) {
		data.isUse = json['IsUse']?.toString();
	}
	if (json['SendUser'] != null) {
		data.sendUser = json['SendUser']?.toString();
	}
	if (json['OrgSendUser'] != null) {
		data.orgSendUser = json['OrgSendUser'];
	}
	if (json['LoginUser'] != null) {
		data.loginUser = json['LoginUser']?.toString();
	}
	if (json['IsPay'] != null) {
		data.isPay = json['IsPay']?.toString();
	}
	if (json['OrderMoney'] != null) {
		data.orderMoney = json['OrderMoney']?.toDouble();
	}
	if (json['terraceMoney'] != null) {
		data.terraceMoney = json['terraceMoney']?.toDouble();
	}
	if (json['InitMoney'] != null) {
		data.initMoney = json['InitMoney']?.toDouble();
	}
	if (json['ExamineMoney'] != null) {
		data.examineMoney = json['ExamineMoney']?.toDouble();
	}
	if (json['AgainMoney'] != null) {
		data.againMoney = json['AgainMoney']?.toDouble();
	}
	if (json['MasterPrice'] != null) {
		data.masterPrice = json['MasterPrice']?.toDouble();
	}
	if (json['OtherMoney'] != null) {
		data.otherMoney = json['OtherMoney']?.toDouble();
	}
	if (json['RelationOrderID'] != null) {
		data.relationOrderID = json['RelationOrderID']?.toInt();
	}
	if (json['BeyondMoney'] != null) {
		data.beyondMoney = json['BeyondMoney']?.toDouble();
	}
	if (json['QuaMoney'] != null) {
		data.quaMoney = json['QuaMoney']?.toDouble();
	}
	if (json['ParentMoney'] != null) {
		data.parentMoney = json['ParentMoney']?.toDouble();
	}
	if (json['BeyondID'] != null) {
		data.beyondID = json['BeyondID']?.toInt();
	}
	if (json['LeaveCount'] != null) {
		data.leaveCount = json['LeaveCount']?.toInt();
	}
	if (json['BeyondState'] != null) {
		data.beyondState = json['BeyondState'];
	}
	if (json['BeyondDistance'] != null) {
		data.beyondDistance = json['BeyondDistance']?.toString();
	}
	if (json['Accessory'] != null) {
		data.accessory = json['Accessory'];
	}
	if (json['AccessorySequency'] != null) {
		data.accessorySequency = json['AccessorySequency'];
	}
	if (json['AccessoryApplyState'] != null) {
		data.accessoryApplyState = json['AccessoryApplyState'];
	}
	if (json['AccessoryAndServiceApplyState'] != null) {
		data.accessoryAndServiceApplyState = json['AccessoryAndServiceApplyState'];
	}
	if (json['AccessoryState'] != null) {
		data.accessoryState = json['AccessoryState'];
	}
	if (json['AccessorySendState'] != null) {
		data.accessorySendState = json['AccessorySendState']?.toString();
	}
	if (json['AccessoryMoney'] != null) {
		data.accessoryMoney = json['AccessoryMoney']?.toDouble();
	}
	if (json['AccessorySearchState'] != null) {
		data.accessorySearchState = json['AccessorySearchState'];
	}
	if (json['AccessoryApplyDate'] != null) {
		data.accessoryApplyDate = json['AccessoryApplyDate'];
	}
	if (json['AccessoryMemo'] != null) {
		data.accessoryMemo = json['AccessoryMemo'];
	}
	if (json['AccessoryServiceMoney'] != null) {
		data.accessoryServiceMoney = json['AccessoryServiceMoney']?.toDouble();
	}
	if (json['Service'] != null) {
		data.service = json['Service'];
	}
	if (json['ServiceMoney'] != null) {
		data.serviceMoney = json['ServiceMoney']?.toDouble();
	}
	if (json['ServiceApplyState'] != null) {
		data.serviceApplyState = json['ServiceApplyState'];
	}
	if (json['ServiceApplyDate'] != null) {
		data.serviceApplyDate = json['ServiceApplyDate'];
	}
	if (json['AccessoryAndServiceApplyDate'] != null) {
		data.accessoryAndServiceApplyDate = json['AccessoryAndServiceApplyDate'];
	}
	if (json['StarOrder'] != null) {
		data.starOrder = json['StarOrder'];
	}
	if (json['FStarOrder'] != null) {
		data.fStarOrder = json['FStarOrder'];
	}
	if (json['PostPayType'] != null) {
		data.postPayType = json['PostPayType'];
	}
	if (json['PostMoney'] != null) {
		data.postMoney = json['PostMoney']?.toDouble();
	}
	if (json['NewMoney'] != null) {
		data.newMoney = json['NewMoney'];
	}
	if (json['AddressBack'] != null) {
		data.addressBack = json['AddressBack'];
	}
	if (json['IsReturn'] != null) {
		data.isReturn = json['IsReturn'];
	}
	if (json['ApplyNum'] != null) {
		data.applyNum = json['ApplyNum']?.toInt();
	}
	if (json['QApplyNum'] != null) {
		data.qApplyNum = json['QApplyNum']?.toInt();
	}
	if (json['MallID'] != null) {
		data.mallID = json['MallID']?.toInt();
	}
	if (json['EndRemark'] != null) {
		data.endRemark = json['EndRemark'];
	}
	if (json['Grade'] != null) {
		data.grade = json['Grade']?.toInt();
	}
	if (json['Grade1'] != null) {
		data.grade1 = json['Grade1']?.toInt();
	}
	if (json['Grade2'] != null) {
		data.grade2 = json['Grade2']?.toInt();
	}
	if (json['Grade3'] != null) {
		data.grade3 = json['Grade3']?.toInt();
	}
	if (json['ReturnAccessory'] != null) {
		data.returnAccessory = json['ReturnAccessory'];
	}
	if (json['ReturnAccessoryMsg'] != null) {
		data.returnAccessoryMsg = json['ReturnAccessoryMsg'];
	}
	if (json['ApplyCancel'] != null) {
		data.applyCancel = json['ApplyCancel'];
	}
	if (json['OrgAppraise'] != null) {
		data.orgAppraise = json['OrgAppraise'];
	}
	if (json['UpdateTime'] != null) {
		data.updateTime = json['UpdateTime']?.toString();
	}
	if (json['LateTime'] != null) {
		data.lateTime = json['LateTime']?.toString();
	}
	if (json['IsExtraTime'] != null) {
		data.isExtraTime = json['IsExtraTime'];
	}
	if (json['OrderPayStr'] != null) {
		data.orderPayStr = json['OrderPayStr'];
	}
	if (json['ThirdPartyNo'] != null) {
		data.thirdPartyNo = json['ThirdPartyNo'];
	}
	if (json['PartyNo'] != null) {
		data.partyNo = json['PartyNo'];
	}
	if (json['ExpressNo'] != null) {
		data.expressNo = json['ExpressNo'];
	}
	if (json['RecycleOrderHour'] != null) {
		data.recycleOrderHour = json['RecycleOrderHour']?.toInt();
	}
	if (json['IsRecevieGoods'] != null) {
		data.isRecevieGoods = json['IsRecevieGoods']?.toString();
	}
	if (json['AppointmentMessage'] != null) {
		data.appointmentMessage = json['AppointmentMessage'];
	}
	if (json['AppointmentState'] != null) {
		data.appointmentState = json['AppointmentState'];
	}
	if (json['IsLate'] != null) {
		data.isLate = json['IsLate'];
	}
	if (json['Distance'] != null) {
		data.distance = json['Distance']?.toDouble();
	}
	if (json['DistanceTureOrFalse'] != null) {
		data.distanceTureOrFalse = json['DistanceTureOrFalse'];
	}
	if (json['SendOrderState'] != null) {
		data.sendOrderState = json['SendOrderState']?.toString();
	}
	if (json['SendOrderMsg'] != null) {
		data.sendOrderMsg = json['SendOrderMsg']?.toString();
	}
	if (json['IsSendRepair'] != null) {
		data.isSendRepair = json['IsSendRepair'];
	}
	if (json['barCode'] != null) {
		data.barCode = json['barCode'];
	}
	if (json['barCodeIsNo'] != null) {
		data.barCodeIsNo = json['barCodeIsNo']?.toInt();
	}
	if (json['OrderSource'] != null) {
		data.orderSource = json['OrderSource'];
	}
	if (json['WithdrawalId'] != null) {
		data.withdrawalId = json['WithdrawalId']?.toInt();
	}
	if (json['LeaveMessageState'] != null) {
		data.leaveMessageState = json['LeaveMessageState'];
	}
	if (json['appointmentTime'] != null) {
		data.appointmentTime = json['appointmentTime'];
	}
	if (json['OrderImg'] != null) {
		data.orderImg = new List<dynamic>();
		data.orderImg.addAll(json['OrderImg']);
	}
	if (json['ReturnaccessoryImg'] != null) {
		data.returnaccessoryImg = new List<dynamic>();
		data.returnaccessoryImg.addAll(json['ReturnaccessoryImg']);
	}
	if (json['OrderAccessroyDetail'] != null) {
		data.orderAccessroyDetail = new List<dynamic>();
		data.orderAccessroyDetail.addAll(json['OrderAccessroyDetail']);
	}
	if (json['OrderServiceDetail'] != null) {
		data.orderServiceDetail = new List<dynamic>();
		data.orderServiceDetail.addAll(json['OrderServiceDetail']);
	}
	if (json['OrderBeyondImg'] != null) {
		data.orderBeyondImg = new List<dynamic>();
		data.orderBeyondImg.addAll(json['OrderBeyondImg']);
	}
	if (json['OrderComplaintDetail'] != null) {
		data.orderComplaintDetail = new List<dynamic>();
		data.orderComplaintDetail.addAll(json['OrderComplaintDetail']);
	}
	if (json['OrderAppraiseDetail'] != null) {
		data.orderAppraiseDetail = new List<dynamic>();
		data.orderAppraiseDetail.addAll(json['OrderAppraiseDetail']);
	}
	if (json['SendOrderList'] != null) {
		data.sendOrderList = new List<NewWorkerGetOrderListDataDataSendOrderList>();
		(json['SendOrderList'] as List).forEach((v) {
			data.sendOrderList.add(new NewWorkerGetOrderListDataDataSendOrderList().fromJson(v));
		});
	}
	if (json['LeavemessageList'] != null) {
		data.leavemessageList = new List<dynamic>();
		data.leavemessageList.addAll(json['LeavemessageList']);
	}
	if (json['LeavemessageimgList'] != null) {
		data.leavemessageimgList = new List<dynamic>();
		data.leavemessageimgList.addAll(json['LeavemessageimgList']);
	}
	if (json['IsPressFactory'] != null) {
		data.isPressFactory = json['IsPressFactory'];
	}
	if (json['WorkerComplaint'] != null) {
		data.workerComplaint = json['WorkerComplaint'];
	}
	if (json['FactoryComplaint'] != null) {
		data.factoryComplaint = json['FactoryComplaint'];
	}
	if (json['Identification'] != null) {
		data.identification = json['Identification'];
	}
	if (json['IsRetuenVisit'] != null) {
		data.isRetuenVisit = json['IsRetuenVisit'];
	}
	if (json['OrderRecord'] != null) {
		data.orderRecord = json['OrderRecord'];
	}
	if (json['ArtisanPhone'] != null) {
		data.artisanPhone = json['ArtisanPhone'];
	}
	if (json['IsLook'] != null) {
		data.isLook = json['IsLook']?.toString();
	}
	if (json['FIsLook'] != null) {
		data.fIsLook = json['FIsLook']?.toString();
	}
	if (json['IsNoMaster'] != null) {
		data.isNoMaster = json['IsNoMaster'];
	}
	if (json['CustomerUserId'] != null) {
		data.customerUserId = json['CustomerUserId'];
	}
	if (json['CompanyName'] != null) {
		data.companyName = json['CompanyName'];
	}
	if (json['WorkerTrueName'] != null) {
		data.workerTrueName = json['WorkerTrueName'];
	}
	if (json['BackstageGetOrderListState'] != null) {
		data.backstageGetOrderListState = json['BackstageGetOrderListState'];
	}
	if (json['page'] != null) {
		data.page = json['page']?.toInt();
	}
	if (json['limit'] != null) {
		data.limit = json['limit']?.toInt();
	}
	if (json['StateList'] != null) {
		data.stateList = new List<dynamic>();
		data.stateList.addAll(json['StateList']);
	}
	if (json['subAccountList'] != null) {
		data.subAccountList = new List<dynamic>();
		data.subAccountList.addAll(json['subAccountList']);
	}
	if (json['AccessorySearchStateList'] != null) {
		data.accessorySearchStateList = json['AccessorySearchStateList'];
	}
	if (json['EndTime'] != null) {
		data.endTime = json['EndTime'];
	}
	if (json['StartTime'] != null) {
		data.startTime = json['StartTime'];
	}
	if (json['AppointmentTimeStart'] != null) {
		data.appointmentTimeStart = json['AppointmentTimeStart'];
	}
	if (json['AppointmentTimeEnd'] != null) {
		data.appointmentTimeEnd = json['AppointmentTimeEnd'];
	}
	if (json['isOnLookMessage'] != null) {
		data.isOnLookMessage = json['isOnLookMessage']?.toInt();
	}
	if (json['AppointmentRefuseState'] != null) {
		data.appointmentRefuseState = json['AppointmentRefuseState'];
	}
	if (json['InvoiceName'] != null) {
		data.invoiceName = json['InvoiceName'];
	}
	if (json['AccessoryRefuseState'] != null) {
		data.accessoryRefuseState = json['AccessoryRefuseState'];
	}
	if (json['FactoryApplyState'] != null) {
		data.factoryApplyState = json['FactoryApplyState'];
	}
	if (json['OrderApplyState'] != null) {
		data.orderApplyState = json['OrderApplyState'];
	}
	if (json['AccessoryIsPay'] != null) {
		data.accessoryIsPay = json['AccessoryIsPay'];
	}
	if (json['OrderSort'] != null) {
		data.orderSort = json['OrderSort'];
	}
	if (json['partsIs'] != null) {
		data.partsIs = json['partsIs'];
	}
	if (json['messageIs'] != null) {
		data.messageIs = json['messageIs'];
	}
	if (json['SendUserIs'] != null) {
		data.sendUserIs = json['SendUserIs'];
	}
	if (json['SelectCustomerUserId'] != null) {
		data.selectCustomerUserId = json['SelectCustomerUserId'];
	}
	if (json['uniqId'] != null) {
		data.uniqId = json['uniqId'];
	}
	if (json['IsSettlement'] != null) {
		data.isSettlement = json['IsSettlement'];
	}
	if (json['SettlementMoney'] != null) {
		data.settlementMoney = json['SettlementMoney']?.toDouble();
	}
	if (json['SettlementTime'] != null) {
		data.settlementTime = json['SettlementTime'];
	}
	if (json['OrderAccessoryStr'] != null) {
		data.orderAccessoryStr = json['OrderAccessoryStr'];
	}
	if (json['ContinueIssuing'] != null) {
		data.continueIssuing = json['ContinueIssuing'];
	}
	if (json['ProdModelName'] != null) {
		data.prodModelName = json['ProdModelName'];
	}
	if (json['ProdModelID'] != null) {
		data.prodModelID = json['ProdModelID']?.toInt();
	}
	if (json['TrueName'] != null) {
		data.trueName = json['TrueName'];
	}
	if (json['NickName'] != null) {
		data.nickName = json['NickName'];
	}
	if (json['CancelAndCloseTime'] != null) {
		data.cancelAndCloseTime = json['CancelAndCloseTime'];
	}
	if (json['CompleteTime'] != null) {
		data.completeTime = json['CompleteTime'];
	}
	if (json['IsApplicationAccessory'] != null) {
		data.isApplicationAccessory = json['IsApplicationAccessory'];
	}
	if (json['MasterIsLookFee'] != null) {
		data.masterIsLookFee = json['MasterIsLookFee'];
	}
	if (json['IsSignIn'] != null) {
		data.isSignIn = json['IsSignIn']?.toInt();
	}
	if (json['OrderProductModels'] != null) {
		data.orderProductModels = new List<NewWorkerGetOrderListDataDataOrderProductModel>();
		(json['OrderProductModels'] as List).forEach((v) {
			data.orderProductModels.add(new NewWorkerGetOrderListDataDataOrderProductModel().fromJson(v));
		});
	}
	if (json['OrderRemoteFeeDetail'] != null) {
		data.orderRemoteFeeDetail = json['OrderRemoteFeeDetail'];
	}
	if (json['Version'] != null) {
		data.version = json['Version']?.toInt();
	}
	return data;
}

Map<String, dynamic> newWorkerGetOrderListDataDataToJson(NewWorkerGetOrderListDataData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['Id'] = entity.id;
	data['OrderID'] = entity.orderID;
	data['TypeID'] = entity.typeID;
	data['TypeName'] = entity.typeName;
	data['SystemSendUser'] = entity.systemSendUser;
	data['picture'] = entity.picture;
	data['SubTypeID'] = entity.subTypeID;
	data['Frozen'] = entity.frozen;
	data['SubTypeName'] = entity.subTypeName;
	data['CategoryID'] = entity.categoryID;
	data['CategoryName'] = entity.categoryName;
	data['SubCategoryID'] = entity.subCategoryID;
	data['SubCategoryName'] = entity.subCategoryName;
	data['Memo'] = entity.memo;
	data['BrandID'] = entity.brandID;
	data['BrandName'] = entity.brandName;
	data['SendAddress'] = entity.sendAddress;
	data['ProductType'] = entity.productType;
	data['ProductTypeID'] = entity.productTypeID;
	data['Num'] = entity.num;
	data['ProvinceCode'] = entity.provinceCode;
	data['CityCode'] = entity.cityCode;
	data['AreaCode'] = entity.areaCode;
	data['DistrictCode'] = entity.districtCode;
	data['WarrantyOrderId'] = entity.warrantyOrderId;
	data['ProvinceName'] = entity.provinceName;
	data['CityName'] = entity.cityName;
	data['AreaName'] = entity.areaName;
	data['DistrictName'] = entity.districtName;
	data['Address'] = entity.address;
	data['FullAddress'] = entity.fullAddress;
	data['Longitude'] = entity.longitude;
	data['Dimension'] = entity.dimension;
	data['UserID'] = entity.userID;
	data['ComID'] = entity.comID;
	data['Guarantee'] = entity.guarantee;
	data['UserName'] = entity.userName;
	data['Phone'] = entity.phone;
	data['CreateDate'] = entity.createDate;
	data['AudDate'] = entity.audDate;
	data['ReceiveOrderDate'] = entity.receiveOrderDate;
	data['RepairCompleteDate'] = entity.repairCompleteDate;
	data['AppraiseDate'] = entity.appraiseDate;
	data['State'] = entity.state;
	data['FakerTime'] = entity.fakerTime;
	data['AffiliatedPerson'] = entity.affiliatedPerson;
	data['AlreadyArrived'] = entity.alreadyArrived;
	data['CurrentOperator'] = entity.currentOperator;
	data['LastReturnVisitDate'] = entity.lastReturnVisitDate;
	data['StateHtml'] = entity.stateHtml;
	data['Extra'] = entity.extra;
	data['ExtraTime'] = entity.extraTime;
	data['IsCall'] = entity.isCall;
	data['ExtraFee'] = entity.extraFee;
	data['IsUse'] = entity.isUse;
	data['SendUser'] = entity.sendUser;
	data['OrgSendUser'] = entity.orgSendUser;
	data['LoginUser'] = entity.loginUser;
	data['IsPay'] = entity.isPay;
	data['OrderMoney'] = entity.orderMoney;
	data['terraceMoney'] = entity.terraceMoney;
	data['InitMoney'] = entity.initMoney;
	data['ExamineMoney'] = entity.examineMoney;
	data['AgainMoney'] = entity.againMoney;
	data['MasterPrice'] = entity.masterPrice;
	data['OtherMoney'] = entity.otherMoney;
	data['RelationOrderID'] = entity.relationOrderID;
	data['BeyondMoney'] = entity.beyondMoney;
	data['QuaMoney'] = entity.quaMoney;
	data['ParentMoney'] = entity.parentMoney;
	data['BeyondID'] = entity.beyondID;
	data['LeaveCount'] = entity.leaveCount;
	data['BeyondState'] = entity.beyondState;
	data['BeyondDistance'] = entity.beyondDistance;
	data['Accessory'] = entity.accessory;
	data['AccessorySequency'] = entity.accessorySequency;
	data['AccessoryApplyState'] = entity.accessoryApplyState;
	data['AccessoryAndServiceApplyState'] = entity.accessoryAndServiceApplyState;
	data['AccessoryState'] = entity.accessoryState;
	data['AccessorySendState'] = entity.accessorySendState;
	data['AccessoryMoney'] = entity.accessoryMoney;
	data['AccessorySearchState'] = entity.accessorySearchState;
	data['AccessoryApplyDate'] = entity.accessoryApplyDate;
	data['AccessoryMemo'] = entity.accessoryMemo;
	data['AccessoryServiceMoney'] = entity.accessoryServiceMoney;
	data['Service'] = entity.service;
	data['ServiceMoney'] = entity.serviceMoney;
	data['ServiceApplyState'] = entity.serviceApplyState;
	data['ServiceApplyDate'] = entity.serviceApplyDate;
	data['AccessoryAndServiceApplyDate'] = entity.accessoryAndServiceApplyDate;
	data['StarOrder'] = entity.starOrder;
	data['FStarOrder'] = entity.fStarOrder;
	data['PostPayType'] = entity.postPayType;
	data['PostMoney'] = entity.postMoney;
	data['NewMoney'] = entity.newMoney;
	data['AddressBack'] = entity.addressBack;
	data['IsReturn'] = entity.isReturn;
	data['ApplyNum'] = entity.applyNum;
	data['QApplyNum'] = entity.qApplyNum;
	data['MallID'] = entity.mallID;
	data['EndRemark'] = entity.endRemark;
	data['Grade'] = entity.grade;
	data['Grade1'] = entity.grade1;
	data['Grade2'] = entity.grade2;
	data['Grade3'] = entity.grade3;
	data['ReturnAccessory'] = entity.returnAccessory;
	data['ReturnAccessoryMsg'] = entity.returnAccessoryMsg;
	data['ApplyCancel'] = entity.applyCancel;
	data['OrgAppraise'] = entity.orgAppraise;
	data['UpdateTime'] = entity.updateTime;
	data['LateTime'] = entity.lateTime;
	data['IsExtraTime'] = entity.isExtraTime;
	data['OrderPayStr'] = entity.orderPayStr;
	data['ThirdPartyNo'] = entity.thirdPartyNo;
	data['PartyNo'] = entity.partyNo;
	data['ExpressNo'] = entity.expressNo;
	data['RecycleOrderHour'] = entity.recycleOrderHour;
	data['IsRecevieGoods'] = entity.isRecevieGoods;
	data['AppointmentMessage'] = entity.appointmentMessage;
	data['AppointmentState'] = entity.appointmentState;
	data['IsLate'] = entity.isLate;
	data['Distance'] = entity.distance;
	data['DistanceTureOrFalse'] = entity.distanceTureOrFalse;
	data['SendOrderState'] = entity.sendOrderState;
	data['SendOrderMsg'] = entity.sendOrderMsg;
	data['IsSendRepair'] = entity.isSendRepair;
	data['barCode'] = entity.barCode;
	data['barCodeIsNo'] = entity.barCodeIsNo;
	data['OrderSource'] = entity.orderSource;
	data['WithdrawalId'] = entity.withdrawalId;
	data['LeaveMessageState'] = entity.leaveMessageState;
	data['appointmentTime'] = entity.appointmentTime;
	if (entity.orderImg != null) {
		data['OrderImg'] =  [];
	}
	if (entity.returnaccessoryImg != null) {
		data['ReturnaccessoryImg'] =  [];
	}
	if (entity.orderAccessroyDetail != null) {
		data['OrderAccessroyDetail'] =  [];
	}
	if (entity.orderServiceDetail != null) {
		data['OrderServiceDetail'] =  [];
	}
	if (entity.orderBeyondImg != null) {
		data['OrderBeyondImg'] =  [];
	}
	if (entity.orderComplaintDetail != null) {
		data['OrderComplaintDetail'] =  [];
	}
	if (entity.orderAppraiseDetail != null) {
		data['OrderAppraiseDetail'] =  [];
	}
	if (entity.sendOrderList != null) {
		data['SendOrderList'] =  entity.sendOrderList.map((v) => v.toJson()).toList();
	}
	if (entity.leavemessageList != null) {
		data['LeavemessageList'] =  [];
	}
	if (entity.leavemessageimgList != null) {
		data['LeavemessageimgList'] =  [];
	}
	data['IsPressFactory'] = entity.isPressFactory;
	data['WorkerComplaint'] = entity.workerComplaint;
	data['FactoryComplaint'] = entity.factoryComplaint;
	data['Identification'] = entity.identification;
	data['IsRetuenVisit'] = entity.isRetuenVisit;
	data['OrderRecord'] = entity.orderRecord;
	data['ArtisanPhone'] = entity.artisanPhone;
	data['IsLook'] = entity.isLook;
	data['FIsLook'] = entity.fIsLook;
	data['IsNoMaster'] = entity.isNoMaster;
	data['CustomerUserId'] = entity.customerUserId;
	data['CompanyName'] = entity.companyName;
	data['WorkerTrueName'] = entity.workerTrueName;
	data['BackstageGetOrderListState'] = entity.backstageGetOrderListState;
	data['page'] = entity.page;
	data['limit'] = entity.limit;
	if (entity.stateList != null) {
		data['StateList'] =  [];
	}
	if (entity.subAccountList != null) {
		data['subAccountList'] =  [];
	}
	data['AccessorySearchStateList'] = entity.accessorySearchStateList;
	data['EndTime'] = entity.endTime;
	data['StartTime'] = entity.startTime;
	data['AppointmentTimeStart'] = entity.appointmentTimeStart;
	data['AppointmentTimeEnd'] = entity.appointmentTimeEnd;
	data['isOnLookMessage'] = entity.isOnLookMessage;
	data['AppointmentRefuseState'] = entity.appointmentRefuseState;
	data['InvoiceName'] = entity.invoiceName;
	data['AccessoryRefuseState'] = entity.accessoryRefuseState;
	data['FactoryApplyState'] = entity.factoryApplyState;
	data['OrderApplyState'] = entity.orderApplyState;
	data['AccessoryIsPay'] = entity.accessoryIsPay;
	data['OrderSort'] = entity.orderSort;
	data['partsIs'] = entity.partsIs;
	data['messageIs'] = entity.messageIs;
	data['SendUserIs'] = entity.sendUserIs;
	data['SelectCustomerUserId'] = entity.selectCustomerUserId;
	data['uniqId'] = entity.uniqId;
	data['IsSettlement'] = entity.isSettlement;
	data['SettlementMoney'] = entity.settlementMoney;
	data['SettlementTime'] = entity.settlementTime;
	data['OrderAccessoryStr'] = entity.orderAccessoryStr;
	data['ContinueIssuing'] = entity.continueIssuing;
	data['ProdModelName'] = entity.prodModelName;
	data['ProdModelID'] = entity.prodModelID;
	data['TrueName'] = entity.trueName;
	data['NickName'] = entity.nickName;
	data['CancelAndCloseTime'] = entity.cancelAndCloseTime;
	data['CompleteTime'] = entity.completeTime;
	data['IsApplicationAccessory'] = entity.isApplicationAccessory;
	data['MasterIsLookFee'] = entity.masterIsLookFee;
	data['IsSignIn'] = entity.isSignIn;
	if (entity.orderProductModels != null) {
		data['OrderProductModels'] =  entity.orderProductModels.map((v) => v.toJson()).toList();
	}
	data['OrderRemoteFeeDetail'] = entity.orderRemoteFeeDetail;
	data['Version'] = entity.version;
	return data;
}

newWorkerGetOrderListDataDataSendOrderListFromJson(NewWorkerGetOrderListDataDataSendOrderList data, Map<String, dynamic> json) {
	if (json['Id'] != null) {
		data.id = json['Id']?.toInt();
	}
	if (json['SendID'] != null) {
		data.sendID = json['SendID']?.toInt();
	}
	if (json['CreateDate'] != null) {
		data.createDate = json['CreateDate']?.toString();
	}
	if (json['UserID'] != null) {
		data.userID = json['UserID']?.toString();
	}
	if (json['OrderID'] != null) {
		data.orderID = json['OrderID']?.toInt();
	}
	if (json['State'] != null) {
		data.state = json['State']?.toString();
	}
	if (json['UpdateDate'] != null) {
		data.updateDate = json['UpdateDate'];
	}
	if (json['ServiceDate'] != null) {
		data.serviceDate = json['ServiceDate'];
	}
	if (json['ServiceDate2'] != null) {
		data.serviceDate2 = json['ServiceDate2'];
	}
	if (json['LoginUser'] != null) {
		data.loginUser = json['LoginUser']?.toString();
	}
	if (json['IsUse'] != null) {
		data.isUse = json['IsUse']?.toString();
	}
	if (json['CategoryID'] != null) {
		data.categoryID = json['CategoryID']?.toInt();
	}
	if (json['CategoryName'] != null) {
		data.categoryName = json['CategoryName'];
	}
	if (json['SubTypeID'] != null) {
		data.subTypeID = json['SubTypeID']?.toInt();
	}
	if (json['SubTypeName'] != null) {
		data.subTypeName = json['SubTypeName'];
	}
	if (json['Memo'] != null) {
		data.memo = json['Memo'];
	}
	if (json['BrandID'] != null) {
		data.brandID = json['BrandID']?.toInt();
	}
	if (json['BrandName'] != null) {
		data.brandName = json['BrandName'];
	}
	if (json['ProductType'] != null) {
		data.productType = json['ProductType'];
	}
	if (json['ProvinceCode'] != null) {
		data.provinceCode = json['ProvinceCode'];
	}
	if (json['CityCode'] != null) {
		data.cityCode = json['CityCode'];
	}
	if (json['AreaCode'] != null) {
		data.areaCode = json['AreaCode'];
	}
	if (json['Address'] != null) {
		data.address = json['Address'];
	}
	if (json['Guarantee'] != null) {
		data.guarantee = json['Guarantee'];
	}
	if (json['UserName'] != null) {
		data.userName = json['UserName'];
	}
	if (json['Phone'] != null) {
		data.phone = json['Phone'];
	}
	if (json['AppointmentState'] != null) {
		data.appointmentState = json['AppointmentState'];
	}
	if (json['AppointmentMessage'] != null) {
		data.appointmentMessage = json['AppointmentMessage'];
	}
	if (json['IsAutoDispatch'] != null) {
		data.isAutoDispatch = json['IsAutoDispatch']?.toInt();
	}
	if (json['IsSignIn'] != null) {
		data.isSignIn = json['IsSignIn']?.toInt();
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

Map<String, dynamic> newWorkerGetOrderListDataDataSendOrderListToJson(NewWorkerGetOrderListDataDataSendOrderList entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['Id'] = entity.id;
	data['SendID'] = entity.sendID;
	data['CreateDate'] = entity.createDate;
	data['UserID'] = entity.userID;
	data['OrderID'] = entity.orderID;
	data['State'] = entity.state;
	data['UpdateDate'] = entity.updateDate;
	data['ServiceDate'] = entity.serviceDate;
	data['ServiceDate2'] = entity.serviceDate2;
	data['LoginUser'] = entity.loginUser;
	data['IsUse'] = entity.isUse;
	data['CategoryID'] = entity.categoryID;
	data['CategoryName'] = entity.categoryName;
	data['SubTypeID'] = entity.subTypeID;
	data['SubTypeName'] = entity.subTypeName;
	data['Memo'] = entity.memo;
	data['BrandID'] = entity.brandID;
	data['BrandName'] = entity.brandName;
	data['ProductType'] = entity.productType;
	data['ProvinceCode'] = entity.provinceCode;
	data['CityCode'] = entity.cityCode;
	data['AreaCode'] = entity.areaCode;
	data['Address'] = entity.address;
	data['Guarantee'] = entity.guarantee;
	data['UserName'] = entity.userName;
	data['Phone'] = entity.phone;
	data['AppointmentState'] = entity.appointmentState;
	data['AppointmentMessage'] = entity.appointmentMessage;
	data['IsAutoDispatch'] = entity.isAutoDispatch;
	data['IsSignIn'] = entity.isSignIn;
	data['page'] = entity.page;
	data['limit'] = entity.limit;
	data['Version'] = entity.version;
	return data;
}

newWorkerGetOrderListDataDataOrderProductModelFromJson(NewWorkerGetOrderListDataDataOrderProductModel data, Map<String, dynamic> json) {
	if (json['Id'] != null) {
		data.id = json['Id']?.toInt();
	}
	if (json['OrderProdcutID'] != null) {
		data.orderProdcutID = json['OrderProdcutID']?.toInt();
	}
	if (json['OrderID'] != null) {
		data.orderID = json['OrderID']?.toInt();
	}
	if (json['CategoryID'] != null) {
		data.categoryID = json['CategoryID']?.toInt();
	}
	if (json['CategoryName'] != null) {
		data.categoryName = json['CategoryName']?.toString();
	}
	if (json['SubCategoryID'] != null) {
		data.subCategoryID = json['SubCategoryID']?.toInt();
	}
	if (json['SubCategoryName'] != null) {
		data.subCategoryName = json['SubCategoryName']?.toString();
	}
	if (json['ProductTypeID'] != null) {
		data.productTypeID = json['ProductTypeID']?.toInt();
	}
	if (json['ProductType'] != null) {
		data.productType = json['ProductType']?.toString();
	}
	if (json['ProdModelID'] != null) {
		data.prodModelID = json['ProdModelID']?.toInt();
	}
	if (json['ProdModelName'] != null) {
		data.prodModelName = json['ProdModelName']?.toString();
	}
	if (json['Memo'] != null) {
		data.memo = json['Memo']?.toString();
	}
	if (json['CreateDate'] != null) {
		data.createDate = json['CreateDate']?.toString();
	}
	if (json['AudDate'] != null) {
		data.audDate = json['AudDate'];
	}
	if (json['ReceiveOrderDate'] != null) {
		data.receiveOrderDate = json['ReceiveOrderDate'];
	}
	if (json['RepairCompleteDate'] != null) {
		data.repairCompleteDate = json['RepairCompleteDate'];
	}
	if (json['AppraiseDate'] != null) {
		data.appraiseDate = json['AppraiseDate'];
	}
	if (json['State'] != null) {
		data.state = json['State'];
	}
	if (json['SendUser'] != null) {
		data.sendUser = json['SendUser'];
	}
	if (json['OrderProdMoney'] != null) {
		data.orderProdMoney = json['OrderProdMoney']?.toDouble();
	}
	if (json['InitMoney'] != null) {
		data.initMoney = json['InitMoney']?.toDouble();
	}
	if (json['BeyondMoney'] != null) {
		data.beyondMoney = json['BeyondMoney']?.toDouble();
	}
	if (json['TechnologyServiceMoney'] != null) {
		data.technologyServiceMoney = json['TechnologyServiceMoney']?.toDouble();
	}
	if (json['PostMoney'] != null) {
		data.postMoney = json['PostMoney']?.toDouble();
	}
	if (json['FactorySettlementMoney'] != null) {
		data.factorySettlementMoney = json['FactorySettlementMoney']?.toDouble();
	}
	if (json['AgainMoney'] != null) {
		data.againMoney = json['AgainMoney']?.toDouble();
	}
	if (json['MasterPrice'] != null) {
		data.masterPrice = json['MasterPrice']?.toDouble();
	}
	if (json['OtherMoney'] != null) {
		data.otherMoney = json['OtherMoney']?.toDouble();
	}
	if (json['terraceMoney'] != null) {
		data.terraceMoney = json['terraceMoney']?.toDouble();
	}
	if (json['MWSettlementMoney'] != null) {
		data.mWSettlementMoney = json['MWSettlementMoney']?.toDouble();
	}
	if (json['BrandID'] != null) {
		data.brandID = json['BrandID']?.toInt();
	}
	if (json['BrandName'] != null) {
		data.brandName = json['BrandName']?.toString();
	}
	if (json['accessory'] != null) {
		data.accessory = json['accessory'];
	}
	if (json['accessoryData'] != null) {
		data.accessoryData = new List<dynamic>();
		data.accessoryData.addAll(json['accessoryData']);
	}
	if (json['SizeID'] != null) {
		data.sizeID = json['SizeID']?.toInt();
	}
	if (json['FrozenMoney'] != null) {
		data.frozenMoney = json['FrozenMoney']?.toDouble();
	}
	if (json['IsUse'] != null) {
		data.isUse = json['IsUse']?.toString();
	}
	if (json['Num'] != null) {
		data.num = json['Num']?.toInt();
	}
	if (json['RelationParentProdID'] != null) {
		data.relationParentProdID = json['RelationParentProdID']?.toInt();
	}
	if (json['ProductState'] != null) {
		data.productState = json['ProductState']?.toInt();
	}
	if (json['EndRemark'] != null) {
		data.endRemark = json['EndRemark'];
	}
	if (json['RepairExplain'] != null) {
		data.repairExplain = json['RepairExplain'];
	}
	if (json['BarCode'] != null) {
		data.barCode = json['BarCode'];
	}
	if (json['Explains'] != null) {
		data.explains = json['Explains'];
	}
	if (json['EndImgUrls'] != null) {
		data.endImgUrls = new List<dynamic>();
		data.endImgUrls.addAll(json['EndImgUrls']);
	}
	if (json['Version'] != null) {
		data.version = json['Version']?.toInt();
	}
	return data;
}

Map<String, dynamic> newWorkerGetOrderListDataDataOrderProductModelToJson(NewWorkerGetOrderListDataDataOrderProductModel entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['Id'] = entity.id;
	data['OrderProdcutID'] = entity.orderProdcutID;
	data['OrderID'] = entity.orderID;
	data['CategoryID'] = entity.categoryID;
	data['CategoryName'] = entity.categoryName;
	data['SubCategoryID'] = entity.subCategoryID;
	data['SubCategoryName'] = entity.subCategoryName;
	data['ProductTypeID'] = entity.productTypeID;
	data['ProductType'] = entity.productType;
	data['ProdModelID'] = entity.prodModelID;
	data['ProdModelName'] = entity.prodModelName;
	data['Memo'] = entity.memo;
	data['CreateDate'] = entity.createDate;
	data['AudDate'] = entity.audDate;
	data['ReceiveOrderDate'] = entity.receiveOrderDate;
	data['RepairCompleteDate'] = entity.repairCompleteDate;
	data['AppraiseDate'] = entity.appraiseDate;
	data['State'] = entity.state;
	data['SendUser'] = entity.sendUser;
	data['OrderProdMoney'] = entity.orderProdMoney;
	data['InitMoney'] = entity.initMoney;
	data['BeyondMoney'] = entity.beyondMoney;
	data['TechnologyServiceMoney'] = entity.technologyServiceMoney;
	data['PostMoney'] = entity.postMoney;
	data['FactorySettlementMoney'] = entity.factorySettlementMoney;
	data['AgainMoney'] = entity.againMoney;
	data['MasterPrice'] = entity.masterPrice;
	data['OtherMoney'] = entity.otherMoney;
	data['terraceMoney'] = entity.terraceMoney;
	data['MWSettlementMoney'] = entity.mWSettlementMoney;
	data['BrandID'] = entity.brandID;
	data['BrandName'] = entity.brandName;
	data['accessory'] = entity.accessory;
	if (entity.accessoryData != null) {
		data['accessoryData'] =  [];
	}
	data['SizeID'] = entity.sizeID;
	data['FrozenMoney'] = entity.frozenMoney;
	data['IsUse'] = entity.isUse;
	data['Num'] = entity.num;
	data['RelationParentProdID'] = entity.relationParentProdID;
	data['ProductState'] = entity.productState;
	data['EndRemark'] = entity.endRemark;
	data['RepairExplain'] = entity.repairExplain;
	data['BarCode'] = entity.barCode;
	data['Explains'] = entity.explains;
	if (entity.endImgUrls != null) {
		data['EndImgUrls'] =  [];
	}
	data['Version'] = entity.version;
	return data;
}