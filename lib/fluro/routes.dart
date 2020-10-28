
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import 'route_handlers.dart';

class Routes{
  static String root="/";
  static String login="/login";
  static String main="/main";
  static String detail="/detail";
  static String info="/info";
  static String headpic="/headpic";
  static String updatename="/updatename";
  static String modpassword="/modpassword";
  static String updateservicearea="/updateservicearea";
  static String mywallet="/mywallet";
  static String certification="/certification";
  static String withdraw="/withdraw";
  static String selectbank="/selectbank";
  static String webpage = "/webpage";
  static String recharge="/recharge";
  static String mycardlist="/mycardlist";
  static String addbankcard="/addbankcard";
  static String bypassaccount="/bypassaccount";
  static String message="/message";
  static String transaction="/transaction";
  static String notifucation="/notifucation";
  static String aboutme="/aboutme";
  static String setting="/setting";
  static String feedback="/feedback";
  static String workorder="/workorder";
  static String loginmain="/loginmain";
  static String regist="/regist";

  static void configureRoutes(Router router){
    router.notFoundHandler=new Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params){
        print("ROUTE WAS NOT FOUND !!!");
      }
    );

    /// 第一个参数是路由地址，第二个参数是页面跳转和传参，第三个参数是默认的转场动画，
    router.define(root, handler: loginHandler);
    router.define(login, handler: loginHandler);
    router.define(main, handler: indexHandler);
    router.define(detail, handler: detailHandler);
//    router.define(info, handler: infoHandler);
//    router.define(headpic, handler: headpicHandler);
//    router.define(updatename, handler: updatenameHandler);
//    router.define(modpassword, handler: modpasswordHandler);
//    router.define(updateservicearea, handler: updateserviceareaHandler);
    router.define(mywallet, handler: walletHandler);
//    router.define(certification, handler: certificationHandler);
//    router.define(withdraw, handler: withdrawHandler);
//    router.define(selectbank, handler: selectbankHandler);
//    router.define(webpage, handler: webpageHandler);
//    router.define(recharge, handler: rechargeHandler);
    router.define(mycardlist, handler: mycardlistHandler);
//    router.define(addbankcard, handler: addbankcardHandler);
//    router.define(bypassaccount, handler: bypassaccountHandler);
//    router.define(message, handler: messageHandler);
//    router.define(transaction, handler: transactionHandler);
//    router.define(notifucation, handler: notifucationHandler);
    router.define(setting, handler: settingHandler);
    router.define(aboutme, handler: aboutmeHandler);
    router.define(feedback, handler: feedbackHandler);
//    router.define(workorder, handler: workorderHandler);
//    router.define(loginmain, handler: loginmainHandler);
    router.define(regist, handler: registerHandler);
  }


}