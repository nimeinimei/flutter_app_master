
import 'dart:ui';

class MyUtil{
  static String getDateAndTime() {
    DateTime now = new DateTime.now();
    var time = now.toString().substring(0,19);
    return time;
  }



  /*比较时间*/
  static String getTimebefore(String time) {
    String dateAndTime = MyUtil.getDateAndTime();//获取当前时间
    //判断的年月日 如果相等 显示 几小时前
    if (time.substring(0, 10)==(dateAndTime.substring(0, 10))) {


      //判断小时数如果小时数相等则显示几分钟之前
      //获取小时数
      int berforehour = int.parse(time.substring(11, 13));
      int afterhour = int.parse(dateAndTime.substring(11, 13));

      //获取分钟数
      int berforeminute = int.parse(time.substring(14, 16));
      int afterminute =int.parse(dateAndTime.substring(14, 16));

      //获取秒数
      int berforesecond = int.parse(time.substring(17, 19));
      int aftersecond = int.parse(dateAndTime.substring(17, 19));


      int beforesecondtotal = berforehour * 3600 + berforeminute * 60 + berforesecond;
      int aftersecondtotal = afterhour * 3600 + afterminute * 60 + aftersecond;

      int hour = ((aftersecondtotal - beforesecondtotal) / 3600).toInt();
      int minuter = ((aftersecondtotal - beforesecondtotal) % 3600 / 60).toInt();
      int second = (aftersecondtotal - beforesecondtotal) % 60;

      if (hour==0&&minuter!=0){
        return "${minuter}分${second}秒前";
      }else if (hour!=0&&minuter!=0){
        return  "${hour}小时${minuter}分${second}秒前";
      }
      else {
        return "${second}秒前";
      }
    }


    //几天前
    else if (time.substring(0, 7)==(dateAndTime.substring(0, 7)) && time.substring(8, 10)!=(dateAndTime.substring(8, 10))) {
      int a = int.parse(dateAndTime.substring(8, 10));
      int b = int.parse(time.substring(8, 10));
      int c = a - b;
      return "${c}天前";
      //几月前
    } else if (time.substring(0, 4)==(dateAndTime.substring(0, 4)) && time.substring(5, 7)!=(dateAndTime.substring(5, 7))) {
      int a = int.parse(dateAndTime.substring(5, 7));
      int b = int.parse(time.substring(5, 7));
      int c = a - b;
      return  "${c}个月前";
      //几年前
    } else if (time.substring(0, 4)!=(dateAndTime.substring(0, 4))) {
      int a = int.parse(dateAndTime.substring(0, 4));
      int b = int.parse(time.substring(0, 4));
      int c = a - b;
      return "${c}年前";
    }


    return null;

  }


  /*显示银行卡的logo*/
  static String showBankLogo(String bankname) {
    if (bankname.contains("工商")) {
      return "gongshang.png";
    }
    if (bankname.contains("光大")) {
      return "gaungda.png";
    }
    if (bankname.contains("广发")) {
      return "gaungfa.png";
    }
    if (bankname.contains("华夏")) {
      return "huaxia.png";
    }
    if (bankname.contains("建设")) {
      return "jianshe.png";
    }
    if (bankname.contains("交通")) {
      return "jiaotong.png";
    }
    if (bankname.contains("民生")) {
      return "minsheng.png";
    }
    if (bankname.contains("农业")) {
      return "nongye.png";
    }
    if (bankname.contains("宁波")) {
      return "ningbo.png";
    }
    if (bankname.contains("浦发")) {
      return "pufa.png";
    }
    if (bankname.contains("兴业")) {
      return "xinye.png";
    }
    if (bankname.contains("邮政")) {
      return "youzheng.png";
    }
    if(bankname.contains("邮储")){
      return "youzheng.png";
    }
    if (bankname.contains("浙商")) {
      return "zheshang.png";
    }
    if (bankname.contains("招商")) {
      return "zhaoshan.png";
    }
    if (bankname.contains("中国银行")) {
      return "zhongguo.png";
    }
    if (bankname.contains("中信")) {
      return "zhongxin.png";
    }
    else{
      return "ic_zanwu.png";
    }
  }

  /*设置银行卡背景颜色*/
  static Color BackGroundColor(String bankname){
    if(bankname.contains("光大")){
      return Color.fromARGB(255,139,101,139);
    }
    if(bankname.contains("广发")){
      return Color.fromARGB(255,178,34,34);
    }
    if(bankname.contains("工商")){
      return Color.fromARGB(255,238,99,99);
    }
    if(bankname.contains("华夏")){
      return Color.fromARGB(255,255,0,0);
    }
    if(bankname.contains("建设")){
      return Color.fromARGB(255,30,144,255);
    }
    if(bankname.contains("交通")){
      return Color.fromARGB(255,65,105,225);
    }
    if(bankname.contains("民生")){
      return Color.fromARGB(255,0,191,255);
    }
    if(bankname.contains("宁波")){
      return Color.fromARGB(255,255,246,143);
    }
    if(bankname.contains("农业")){
      return Color.fromARGB(255,0,206,209);
    }
    if(bankname.contains("浦发")){
      return Color.fromARGB(255,0,0,205);
    }
    if(bankname.contains("兴业")){
      return Color.fromARGB(255,30,144,255);
    }
    if(bankname.contains("邮政")){
      return Color.fromARGB(255,0,100,0);
    }
    if(bankname.contains("邮储")){
      return Color.fromARGB(255,0,100,0);
    }
    if(bankname.contains("招商")){
      return Color.fromARGB(255,238,121,66);
    }
    if(bankname.contains("浙商")){
      return Color.fromARGB(255,255,215,0);
    }
    if(bankname.contains("中国银行")){
      return Color.fromARGB(255,139,58,58);
    }
    if(bankname.contains("中信")){
      return Color.fromARGB(255,238,44,44);
    }
    else{
      return Color.fromARGB(255,22,144,255);
    }
    
  }

/*2019-09-10T15:39:55"
* 转换为
* 2019年09月10日15时39分55秒
* */
  static String getTimeforCN(String Time){
  String result=  Time.replaceRange(4, 5, "年")
                      .replaceRange(7, 8, "月")
                      .replaceRange(10, 11, "日")
                      .replaceRange(13, 14, "时")
                      .replaceRange(16, 17, "分")+"秒";
     return result;
  }


}