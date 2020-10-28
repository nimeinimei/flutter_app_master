/*注册页面*/

import 'package:flutter/material.dart';
import 'package:flutter_app_master/manager/resource_mananger.dart';

class RegisterPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _RegisterPage();
  }
}
class _RegisterPage extends State<RegisterPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
       body:
       SingleChildScrollView(
         child: Container(
           height: 400,
           width: double.infinity,
           child: Column(
             children: <Widget>[
               Expanded(
                   flex: 3,
                   child: Container(
                     margin: EdgeInsets.only(top: 10),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: <Widget>[
                         Image.asset(ImageHelper.wrapAssets("ic_loginmain_yu.png"),width: 80,height: 80),
                         Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: <Widget>[
                             Container(
                               margin: EdgeInsets.only(left: 10,bottom: 5),
                               child: Text("西瓜鱼师傅",style: TextStyle(fontSize: 29,color: Colors.black,fontWeight: FontWeight.w500)),
                             ),
                             Container(
                               margin: EdgeInsets.only(left: 40),
                               child: Text("以服务为目标",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w500)),
                             )
                           ],
                         )
                       ],
                     ),
                   )
               ),
               Expanded(
                   flex: 4,
                   child: Container(
                     margin: EdgeInsets.only(bottom: 10),
                     child:Column(
                       children: <Widget>[
                         Container(
                           height: 50,
                           decoration: BoxDecoration(
                               border: Border(top:BorderSide(width: 0.3,color: Colors.grey),
                                 bottom: BorderSide(width: 0.3,color: Colors.grey),
                               )
                           ),
                           child:Row(children: <Widget>[
                             Padding(padding: EdgeInsets.only(left: 10),
                                 child: Text("国家和地区",style: TextStyle(fontSize: 12))
                             ),
                             Expanded(child: Container(
                               margin: EdgeInsets.only(right: 10),
                               alignment: Alignment.centerRight,
                               child: Text("中国大陆+86",style: TextStyle(fontSize: 12)),
                             )
                             )
                           ],
                           ),
                         ),
                         Container(
                           height: 50,
                           decoration: BoxDecoration(
                               border: Border(bottom: BorderSide(width: 0.3,color: Colors.grey))
                           ),
                           child: Row(children: <Widget>[
                             Expanded(flex:1,
                                 child:
                                 Padding(padding: EdgeInsets.only(left: 10),
                                     child:Text("手机号码:",style: TextStyle(fontSize: 12))
                                 )
                             ),
                             Expanded(flex:3,
                               child: TextField(
                                 //控制器 可以获取内容
                                 // controller: controller, //给TextField设置装饰（形状等）
                                 decoration: InputDecoration(
                                   disabledBorder: InputBorder.none,
                                   enabledBorder:  InputBorder.none,
                                   focusedBorder:   InputBorder.none,
                                   //输入内容距离上下左右的距离 ，可通过这个属性来控制 TextField的高度
                                   contentPadding: EdgeInsets.only(top: 10,bottom: 10,left: 10),
                                 ),
                                 ///光标设置
                                 cursorColor: Colors.black,
                                 cursorWidth: 2,
                                 cursorRadius: Radius.circular(1),
                                 //键盘类型设置
                                 keyboardType: TextInputType.number,
                                 //是否是密码
                                 obscureText: false,
                               ),
                             ),
                             Expanded(flex:1,
                               child: Container(),
                             ),
                           ],
                           ),
                         ),
                         Container(
                             height: 50,
                             decoration: BoxDecoration(
                                 border: Border(bottom: BorderSide(width: 0.3,color: Colors.grey))
                             ),
                             child:Row(children: <Widget>[
                               Expanded(flex:1,
                                   child: Padding(padding: EdgeInsets.only(left: 10),
                                       child:Text("验证码:",style: TextStyle(fontSize: 12))
                                   )
                               ),
                               Expanded(flex:3,
                                 child: TextField(
                                   //控制器 可以获取内容
                                   // controller: controller, //给TextField设置装饰（形状等）
                                   decoration: InputDecoration(
                                     disabledBorder: InputBorder.none,
                                     enabledBorder:  InputBorder.none,
                                     focusedBorder:   InputBorder.none,
                                     //输入内容距离上下左右的距离 ，可通过这个属性来控制 TextField的高度
                                     contentPadding: EdgeInsets.only(top: 10,bottom: 10,left: 10),
                                   ),
                                   ///光标设置
                                   cursorColor: Colors.black,
                                   cursorWidth: 2,
                                   cursorRadius: Radius.circular(1),
                                   //键盘类型设置
                                   keyboardType: TextInputType.number,
                                   //是否是密码
                                   obscureText: false,
                                 ),
                               ),
                               Expanded(flex:1,
                                   child:
                                   Padding(padding: EdgeInsets.only(right: 10),
                                       child:Text("点击获取验证码",style: TextStyle(fontSize: 12),)
                                   )
                               ),
                             ],
                             )
                         ),
                         Container(
                           height: 50,
                           decoration: BoxDecoration(
                               border: Border(bottom: BorderSide(width: 0.3,color: Colors.grey))
                           ),
                           child: Row(children: <Widget>[
                             Expanded(flex:1,
                                 child:
                                 Padding(padding: EdgeInsets.only(left: 10),
                                     child:Text("密码:",style: TextStyle(fontSize: 12))
                                 )
                             ),
                             Expanded(flex:3,
                               child: TextField(
                                 //控制器 可以获取内容
                                 // controller: controller, //给TextField设置装饰（形状等）
                                 decoration: InputDecoration(
                                   disabledBorder: InputBorder.none,
                                   enabledBorder:  InputBorder.none,
                                   focusedBorder:   InputBorder.none,
                                   //输入内容距离上下左右的距离 ，可通过这个属性来控制 TextField的高度
                                   contentPadding: EdgeInsets.only(top: 10,bottom: 10,left: 10),
                                 ),
                                 ///光标设置
                                 cursorColor: Colors.black,
                                 cursorWidth: 2,
                                 cursorRadius: Radius.circular(1),
                                 //键盘类型设置
                                 keyboardType: TextInputType.text,
                                 //是否是密码
                                 obscureText: false,
                               ),
                             ),
                             Expanded(flex:1,
                               child: Container(),
                             ),
                           ],
                           ),
                         )
                       ],
                     ),
                   )
                ),
             ],
           ),
         ),
       ),

   bottomNavigationBar: Container(
     width: double.infinity,
     height: 200,
         child: Column(children: <Widget>[
           Container(
             alignment: Alignment.center,
             width: double.infinity,
             height: 45,
             margin: EdgeInsets.only(left: 40,right: 40),
             decoration: BoxDecoration(
                 color: Colors.blue,
                 borderRadius: BorderRadius.all(Radius.circular(8))
             ),
             child: Text("注册",style: TextStyle(color:Colors.white,fontSize: 16,fontWeight: FontWeight.w500)),
           ),
          ],
         )
      ),
    );
  }
}