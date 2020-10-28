import 'package:flutter/material.dart';
import 'package:flutter_app_master/manager/resource_mananger.dart';
import 'package:flutter_app_master/provider/model/ConfigModel.dart';
import 'package:flutter_app_master/provider/store.dart';
import 'package:flutter_app_master/provider/theme_util.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _SettingPage();
  }

}
class _SettingPage extends State<SettingPage>{

  bool isCheck_install= true;
  bool isCheck_maintain =true;
  //int _position=0;
 String _hint="当前选中了";
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255,245,242,245),
      appBar: AppBar(
        title: Text("设置",
          style:TextStyle(
              fontSize: 15,
              color: Colors.white
          ),
        ),
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios, color: Colors.white), //自定义图标,
           onPressed: (){ Navigator.pop(context);}
        ),
        flexibleSpace: Store.connect<ConfigModel>(
            builder: (context, ConfigModel snapshot, child) {
              return Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: ThemeUtil.setActionBar(snapshot.theme)
                    )
                ),
              );
            }
        ),
      ),
     body:

     SingleChildScrollView(
       child:Column(
         children: <Widget>[
           /*安装工单*/
           Container(
             width: double.infinity,
             height: 55,
             decoration: BoxDecoration(
                 color: Colors.white,
                 border: Border(top: BorderSide(color: Colors.grey,width: 0.3))
             ),
             child: Row(
               children: <Widget>[
                 Padding(padding: EdgeInsets.only(left: 10),child:Text("安装工单")),
                 Expanded(flex: 4,
                   child: Container(),
                 ),
                 Expanded(flex:1,child:
                   Store.connect<ConfigModel>(
                     builder: (context, ConfigModel snapshot, child) {
                       return Switch(
                           value: isCheck_install,
                           activeColor:ThemeUtil.SetFontColor(snapshot.theme),     // 激活时原点颜色
                           onChanged: (bool val) {
                             this.setState(() {
                               isCheck_install=!isCheck_install;
                             });
                           },
                         );
                     }
                 ),



                 )
               ],
             ),
           ),

           /*维修工单*/
           Container(
             width: double.infinity,
             height: 55,
             decoration: BoxDecoration(
                 color: Colors.white,
                 border: Border(top: BorderSide(color: Colors.grey,width: 0.3))
             ),
             child: Row(
               children: <Widget>[
                 Padding(padding: EdgeInsets.only(left: 10),child:Text("维修工单")),
                 Expanded(flex: 4,
                   child: Container(),
                 ),
                 Expanded(flex:1,child:
                 Store.connect<ConfigModel>(
                     builder: (context, ConfigModel snapshot, child) {
                       return Switch(
                         value: isCheck_maintain,
                         activeColor:ThemeUtil.SetFontColor(snapshot.theme),     // 激活时原点颜色
                         onChanged: (bool val) {
                           this.setState(() {
                             isCheck_maintain=!isCheck_maintain;
                           });
                         },
                       );
                     }
                 ),
                 )
               ],
             ),
           ),
           /*清除缓存*/
           Container(
             width: double.infinity,
             height: 55,
             decoration: BoxDecoration(
                 color: Colors.white,
                 border: Border(top: BorderSide(color: Colors.grey,width: 0.3))
             ),
             child: Row(children: <Widget>[
               Padding(padding: EdgeInsets.only(left: 10),child:Text("清除缓存")),
               Expanded(child: Container(
                 alignment: Alignment.centerRight,
                 margin: EdgeInsets.only(right: 15),
                 child:
                 Store.connect<ConfigModel>(
                     builder: (context, ConfigModel snapshot, child) {
                       return  Image.asset(
                               ImageHelper.wrapAssets("ic_clean${ThemeUtil.SetPhotoColor(snapshot.theme)}.png"),
                                width: 25,height: 25);
                     }
                 ),
                 
                
               ))
             ],
             ),
           ),

           /*检查更新*/
           GestureDetector(
             child:Container(
               width: double.infinity,
               height: 55,
               decoration: BoxDecoration(
                   color: Colors.white,
                   border: Border(top: BorderSide(color: Colors.grey,width: 0.3))
               ),
               child: Row(children: <Widget>[
                 Padding(padding: EdgeInsets.only(left: 10),child:Text("检查更新")),
                 Expanded(child: Container(
                     alignment: Alignment.centerRight,
                     margin: EdgeInsets.only(right: 17),
                     child: Store.connect<ConfigModel>(
                         builder: (context, ConfigModel snapshot, child) {
                           return Image.asset(
                               ImageHelper.wrapAssets("ic_update${ThemeUtil.SetPhotoColor(snapshot.theme)}.png"),
                               width: 22,height: 22);
                         }
                     ),
                  )
                 )
               ],
               ),
             ),
             onTap: (){

             },
           ),




           /*设置主题颜色*/
           Container(
             width: double.infinity,
             height: 120,
             color: Colors.white,
             margin: EdgeInsets.only(top: 12),
             child: Column(
               children: <Widget>[
                 /**/
                 Container(
                     alignment: Alignment.centerLeft,
                     width: double.infinity,
                     padding: EdgeInsets.only(left: 10),
                     height: 40,
                     decoration: BoxDecoration(
                         border: Border(top: BorderSide(color: Colors.grey,width: 0.3),bottom:BorderSide(color: Colors.grey,width: 0.3))
                     ),
                     child:
                     Row(children: <Widget>[
                       Text("设置主题色",style: TextStyle(fontSize: 14)),
                       Expanded(child: Container(
                           alignment: Alignment.centerRight,
                           margin: EdgeInsets.only(right: 10),
                           child: Container(
                             padding: EdgeInsets.only(left: 4,right: 4,top: 2,bottom: 2),
                             decoration: BoxDecoration(
                                 color: Color.fromARGB(200, 255,152,0),
                                 borderRadius: BorderRadius.all(Radius.circular(4))
                             ),

                             child: Text("${_hint}${ThemeUtil.GetColorName(Store.value<ConfigModel>(context).theme)}"
                                 ,style: TextStyle(fontSize: 12,color: Colors.white)),
                           )

                       ))

                     ],)




                 ),

                 Container(
                     width: double.infinity,
                     height: 80,
                     padding: EdgeInsets.only(left: 10,right: 10),
                     decoration: BoxDecoration(
                         border: Border(bottom: BorderSide(color: Colors.grey,width: 0.2))
                     ),
                     child:Row(
                       children: <Widget>[
                         Expanded(flex:1,child:
                          selecttheme_item(0, "blue","默认蓝")
                         ),
                         Expanded(flex:1,child:
                          selecttheme_item(1, "yellow","柠檬黄")),
                         Expanded(flex:1,child:
                          selecttheme_item(2, "green","薄荷绿")
                         ),
                         Expanded(flex:1,child:
                          Container(
                           child: Center(
                             child: Container(
                               alignment: Alignment.center,
                               width: 58,
                               height: 58,
                               decoration: BoxDecoration(
                                   color: Colors.white,
                                   borderRadius: BorderRadius.all(Radius.circular(28)),
                                   border: Border.all(color: Colors.black,width: 0.2)
                               ),
                               child:
                               Padding(padding: EdgeInsets.all(6),
                                 child:Text("更多主题敬请期待",style: TextStyle(fontSize: 10))
                               ),
                             ),
                           )


                         )

                         ),
                       ],
                     )
                 ),
               ],
             ),
           ),

           /*退出登录*/
           Container(
             width: double.infinity,
             height: 50,
             margin: EdgeInsets.only(top: 12),
             alignment: Alignment.center,
             decoration: BoxDecoration(
                 color: Colors.white,
                 border: Border(top: BorderSide(color: Colors.grey,width: 0.3),bottom: BorderSide(color: Colors.grey,width: 0.3))
             ),
             child: Text("退出登录",style: TextStyle(color: Colors.red,fontSize: 16),),
           )
           
           
           
         ],
       ),
     )




    );
  }

  Color _getcolor(String color){
    switch(color){
      case "blue":
        return Colors.blue;
      case "yellow":
        return Color.fromARGB(255,247,210,127);
      case "green":
        return Color.fromARGB(255,140,193,75);
    }
  }
  
  Widget selecttheme_item(int index,String color,String strColor){
    return index==ThemeUtil.GetColorLocation(Store.value<ConfigModel>(context).theme)?
        //选中情况
      Container(
          child: Center(
            child: Container(
            alignment: Alignment.center,
            width: 58,
            height: 58,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(29)),
              color:_getcolor(color),
              // 生成俩层阴影，一层绿，一层黄， 阴影位置由offset决定,阴影模糊层度由blurRadius大小决定（大就更透明更扩散），阴影模糊大小由spreadRadius决定
              boxShadow: [BoxShadow(color: Colors.grey,
                  offset: Offset(0.0, 0.0),
                  blurRadius: 2.0,
                  spreadRadius: 1.0
              ),
              ],
            ),
             child:Text(strColor,style: TextStyle(fontSize: 13,color: Colors.white,fontWeight: FontWeight.w600))
          )
        ),
        //
    ):
    //未选中情况
    GestureDetector(
      child: Container(
        child:Center(
          child: Container(
            alignment: Alignment.center,
           width: 58,
           height: 58,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.all(Radius.circular(28)),
             color:_getcolor(color),
           ),
            child: Text(strColor,style: TextStyle(fontSize: 12,color: Colors.white)),
         ),
       )
      ),
      onTap: () async{
          setState(() {
            Store.value<ConfigModel>(context).changeTheme(color);
            /*将所选的颜色存入sp中*/
          });
        SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
        sharedPreferences.setString("Theme", color);
      },
    );


  }

}