
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_master/pages/login/page_register.dart';
import 'package:flutter_app_master/pages/me/about_us/about_me_page.dart';
import 'package:flutter_app_master/pages/me/about_us/feedback_page.dart';
import 'package:flutter_app_master/pages/me/my_wallet/page_card.dart';
import 'package:flutter_app_master/pages/me/my_wallet/page_wallet.dart';
import 'package:flutter_app_master/pages/me/setting_page.dart';
import 'package:flutter_app_master/pages/login/page_login.dart';
import 'package:flutter_app_master/pages/page_order_detail.dart';

import '../index.dart';


///跳转到登录页面
var loginHandler =Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params){
      return Login();
    }
);

///注册
var registerHandler =Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params){
      return RegisterPage();
    }
);


/// 跳转到主页
var indexHandler=Handler(
  handlerFunc:(BuildContext context, Map<String, List<String>> params){
    return Index();
  }
);

/// 跳转到工单详情页
var detailHandler=Handler(
  handlerFunc:(BuildContext context, Map<String, List<String>> params){
    return OrderDetailPage();
  }
);

/// 设置
var settingHandler=Handler(
  handlerFunc:(BuildContext context, Map<String, List<String>> params){
    return SettingPage();
  }
);

/// 关于我们
var aboutmeHandler=Handler(
  handlerFunc:(BuildContext context, Map<String, List<String>> params){
    return AboutMePage();
  }
);
/// 意见反馈
var feedbackHandler=Handler(
  handlerFunc:(BuildContext context, Map<String, List<String>> params){
    return FeedbackPage();
  }
);

/// 我的钱包
var walletHandler=Handler(
  handlerFunc:(BuildContext context, Map<String, List<String>> params){
    return WalletPage();
  }
);

/// 我的银行卡
var mycardlistHandler=Handler(
  handlerFunc:(BuildContext context, Map<String, List<String>> params){
    return CardPage();
  }
);



