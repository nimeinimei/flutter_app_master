
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import 'application.dart';
import 'fluro_convert_util.dart';
import 'routes.dart';

class NavigatorUtil{

  /// 返回
  static void goBack(BuildContext context) {
    /// 其实这边调用的是 Navigator.pop(context);
    Application.router.pop(context);
  }


  /// 带参数的返回
  static void goBackWithParams(BuildContext context, result) {
    Navigator.pop(context, result);
  }



  /// 跳转到登录界面
  static void goLoginPage(BuildContext context){
    /// Routes.home 路由地址
    Application.router.navigateTo(context, Routes.login,replace: true);

  }
  ///跳转到登陆主界面
  static void goLoginMainPage(BuildContext context){
    Application.router.navigateTo(
        context,
        Routes.login,
        replace: true);
  }



  /// 跳转到主页面
  static void goMainPage(BuildContext context){
    /// Routes.home 路由地址
    Application.router.navigateTo(context, Routes.main,replace: true);
  }

  /// 跳转到工单详情页
  static void goOrderDetailPage(BuildContext context){
    /// Routes.home 路由地址
    Application.router.navigateTo(context, Routes.detail,replace: false ,transition: TransitionType.inFromRight);
  }


  /// 跳转到个人信息页面
   static void goInfoPage(BuildContext context){
    /// Routes.home 路由地址
    /// replace：true 就是将 splash 页面给移除掉了，这点后退键的时候就不会再出现Splash页面
     ///  /// 框架自带的有 native，nativeModal，inFromLeft，inFromRight，inFromBottom，fadeIn，custom
    Application.router.navigateTo(context, Routes.info,replace: false,transition: TransitionType.inFromRight);
  }

  ///查看大图头像
  static void goHeadPicPage(BuildContext context){
    /// replace：true 就是将 splash 页面给移除掉了，这点后退键的时候就不会再出现Splash页面
    Application.router.navigateTo(context, Routes.headpic,replace: false);
  }

    /// 跳转到修改店铺名页面
   static void goUpDateNamePage(BuildContext context){
    /// replace：true 就是将 splash 页面给移除掉了，这点后退键的时候就不会再出现Splash页面
    Application.router.navigateTo(context, Routes.updatename,replace: false,transition: TransitionType.inFromRight);
  }

  /// 跳转到修改密码页面
  static void goModPassWordPage(BuildContext context){
    /// replace：true 就是将 splash 页面给移除掉了，这点后退键的时候就不会再出现Splash页面
    Application.router.navigateTo(context, Routes.modpassword,replace: false,transition: TransitionType.inFromRight);
  }

  /// 跳转到修改服务区域页面
  static void goUpdateServicePage(BuildContext context){
    /// replace：true 就是将 splash 页面给移除掉了，这点后退键的时候就不会再出现Splash页面
    Application.router.navigateTo(context, Routes.updateservicearea,replace: false,transition: TransitionType.inFromRight);
  }

  /// 跳转到我的钱包页面
  static void goMyWalletPage(BuildContext context){
    /// replace：true 就是将 splash 页面给移除掉了，这点后退键的时候就不会再出现Splash页面
    Application.router.navigateTo(context, Routes.mywallet,replace: false,transition: TransitionType.inFromRight);
  }

  /// 跳转到我的实名认证
  static void goCertificationPage(BuildContext context){
    /// replace：true 就是将 splash 页面给移除掉了，这点后退键的时候就不会再出现Splash页面
    Application.router.navigateTo(context, Routes.certification,replace: false,transition: TransitionType.inFromRight);
  }

    ///跳转到提现页面
  static void goWithdrawPage(BuildContext context){
    /// replace：true 就是将 splash 页面给移除掉了，这点后退键的时候就不会再出现Splash页面
    Application.router.navigateTo(context, Routes.withdraw,replace: false,transition: TransitionType.inFromRight);
  }

  ///跳转到提现时选择银行卡页面  带返回值 index 为当前选择的银行卡的位置
  static Future goSelectBankPage(BuildContext context,String index){
    return Application.router.navigateTo(
        context,
        Routes.selectbank+"?index=$index",
        replace: false,
        transition: TransitionType.inFromRight);
  }

  ///跳转到充值页面
  static void goRechargePage(BuildContext context){
    /// replace：true 就是将 splash 页面给移除掉了，这点后退键的时候就不会再出现Splash页面
    Application.router.navigateTo(context, Routes.recharge,replace: false,transition: TransitionType.inFromRight);
  }

  ///跳转到条款页面
  static void goWebPage(BuildContext context,String url,String title){

      String _url = FluroConvertUtils.fluroCnParamsEncode(url);
      String _title = FluroConvertUtils.fluroCnParamsEncode(title);

     Application.router.navigateTo(
        context,
        Routes.webpage+"?url=$_url&title=$_title",
        replace: false,
        transition: TransitionType.inFromRight);
  }

  ///我的银行卡
  static void goMyBankCardListPage(BuildContext context){
    Application.router.navigateTo(
        context,
        Routes.mycardlist,
        replace: false,
        transition: TransitionType.inFromRight);
  }

  ///添加银行卡
  static void goAddBankCardPage(BuildContext context){
    Application.router.navigateTo(
        context,
        Routes.addbankcard,
        replace: false,
        transition: TransitionType.inFromRight);
  }

  ///跳转到子账号
  static void goByPassAccountPage(BuildContext context){
    Application.router.navigateTo(
        context,
        Routes.bypassaccount,
        replace: false,
        transition: TransitionType.inFromRight);
  }

  ///跳转到消息列表
  static void goMessageListPage(BuildContext context){
    Application.router.navigateTo(
        context,
        Routes.message,
        replace: false,
        transition: TransitionType.inFromRight);
  }

  ///跳转到交易信息列表
  static void goTransactionListPage(BuildContext context){
    Application.router.navigateTo(
        context,
        Routes.transaction,
        replace: false,
        transition: TransitionType.inFromRight);
  }

  ///跳转到通知列表
  static Future goNotifucationPage(BuildContext context,String type){
    return Application.router.navigateTo(
        context,
        Routes.notifucation+"?type=${type}",
        replace: false,
        transition: TransitionType.inFromRight);
  }

  ///跳转设置页面
  static Future goSettingPage(BuildContext context){
    return Application.router.navigateTo(
        context,
        Routes.setting,
        replace: false,
        transition: TransitionType.inFromRight);
  }
  ///跳转到关于我们
  static void goAboutMePage(BuildContext context){
    Application.router.navigateTo(
        context,
        Routes.aboutme,
        replace: false,
        transition: TransitionType.inFromRight);
  }

  ///跳转到意见反馈
  static void goFeedBackPage(BuildContext context){
    Application.router.navigateTo(
        context,
        Routes.feedback,
        replace: false,
        transition: TransitionType.inFromRight);
  }


  ///跳转到我的工单
  static void goWorkOrderPage(BuildContext context){
    Application.router.navigateTo(
        context,
        Routes.workorder,
        replace: false,
        transition: TransitionType.fadeIn);
  }


  ///跳转到注册界面
  static void goRegistPage(BuildContext context){
    Application.router.navigateTo(
        context,
        Routes.regist,
        replace: false,
        transition: TransitionType.fadeIn);
  }

}