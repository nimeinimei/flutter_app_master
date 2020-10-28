import 'package:flutter/material.dart';
import 'package:flutter_app_master/fluro/NavigatorUtil.dart';
import 'package:flutter_app_master/manager/resource_mananger.dart';
import 'package:flutter_app_master/provider/model/ConfigModel.dart';
import 'package:flutter_app_master/provider/sp_helper.dart';
import 'package:flutter_app_master/provider/store.dart';
import 'package:flutter_app_master/provider/theme_util.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FeedbackPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _FeedbackPage();
  }
}
class _FeedbackPage extends State<FeedbackPage>{

  int _position=1;
  TextEditingController _controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text("意见反馈",
          style:TextStyle(
              fontSize: 15,
              color: Colors.white
          ),
        ),
        centerTitle: true,
        leading: IconButton(icon: Image.asset(
          ImageHelper.wrapAssets("icon_actionbar_return.png"),
          width: 20,
          height: 20,
        ), onPressed: (){
          NavigatorUtil.goBack(context);
        }
        ),
        flexibleSpace: Store.connect<ConfigModel>(
            builder: (context, ConfigModel snapshot, child) {
              return  Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: ThemeUtil.setActionBar(snapshot.theme)
                    )
                ),
              );
            }
        ),
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 120,
            color: Color.fromARGB(255,240,240,240),
            child: Row(
              children: <Widget>[
                Expanded(child:
                 item_select_problem(1,"账号问题","ic_acc.png")
              ),
               Expanded(child:
               item_select_problem(2,"支付问题","ic_zhif.png")),
               Expanded(child:
               item_select_problem(3,"其他问题","ic_qita.png")
               ),


              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10,bottom: 10,left: 10),
            width: double.infinity,
            child: Text("反馈内容"),
            decoration: BoxDecoration(
              border: Border(top: BorderSide(width: 0.2,color: Colors.grey),bottom: BorderSide(width: 0.2,color: Colors.grey))
            ),
          ),

          /*输入框*/
          Container(
            margin: EdgeInsets.only(top: 10,bottom: 10,left: 10,right: 10),
            padding: EdgeInsets.only(bottom: 5,left: 10,right: 10),
            width: double.infinity,
            decoration: BoxDecoration(
                color: Color.fromARGB(180,240,240,240),
                border: Border.all(width: 0.2,color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(3))
            ),
            child: TextField(
              controller: _controller,
              style: TextStyle(fontSize: 13,color: Colors.blue),
              maxLength: 100,
              maxLines: 4,
              decoration: InputDecoration(
                disabledBorder: InputBorder.none,
                enabledBorder:  InputBorder.none,
                focusedBorder:  InputBorder.none,
              ),
            )
          ),

          /*提交*/
          GestureDetector(
            child:

            Store.connect<ConfigModel>(
                builder: (context, ConfigModel snapshot, child) {
                  return Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: 45,
                      margin: EdgeInsets.only(left: 10,right: 10,top: 5),
                       decoration: BoxDecoration(
                       color: ThemeUtil.SetFontColor(snapshot.theme),
                       borderRadius: BorderRadius.all(Radius.circular(5))
                      ),
                        child: Text("提 交",style: TextStyle(color: Colors.white,fontSize: 16)
                      ),
                    );
                }
            ),
            onTap: (){
              if(_controller.text==""){
                Fluttertoast.showToast(msg: "请输入反馈内容");
                return ;
              }
              SpHelper.getUserName().then((username)=>_AddOpinion(username, _position.toString(), _controller.text));

            },
          )
        ],

      ),

    );
  }

  Widget item_select_problem(int index,String problem,String photo){
    return _position==index?
    Store.connect<ConfigModel>(
        builder: (context, ConfigModel snapshot, child) {
          return Container(
            alignment: Alignment.center,
            height: 80,
            margin: EdgeInsets.only(left: 18,right: 18),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: ThemeUtil.SetTransparencyColor(snapshot.theme),
                border: Border.all(width: 1.5,color: Colors.orange)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(ImageHelper.wrapAssets(photo),width: 40,height: 40),
                Text("${problem}(已选)",
                  style: TextStyle(fontSize:10,color: Colors.white,fontWeight: FontWeight.w500),)
              ],
            ),
          );
        }
    ):
       GestureDetector(
         child: Store.connect<ConfigModel>(
             builder: (context, ConfigModel snapshot, child) {
               return Container(
                 alignment: Alignment.center,
                 height: 80,
                 margin: EdgeInsets.only(left: 18,right: 18),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.all(Radius.circular(5)),
                   color: ThemeUtil.SetTransparencyColor(snapshot.theme),
                 ),
                 child: Text(problem,style: TextStyle(fontSize:10,color: Colors.white),),
               );
             }
         ),
         onTap: (){
         setState(() {
           _position=index;
         });
         },
       );

  }


  /*
  *  /**
     * 意见反馈
     *
     * @param UserID   用户id
     * @param BackType 1.账号问题 2.支付问题 3.其他问题
     * @param Content  描述
     * @return
     */
    @FormUrlEncoded
    @POST("Account/AddOpinion")
    Observable<BaseResult<Data<String>>> AddOpinion(@Field("UserID") String UserID,
                                                    @Field("BackType") String BackType,
                                                    @Field("Content") String Content);
  * */
  _AddOpinion(String UserID,String BackType,String Content)async{
    var data=Map();
    data["UserID"]=UserID;
    data["BackType"]=BackType;
    data["Content"]=Content;
//    await HttpUtils.post("Account/AddOpinion", data).then((result){
//      var baseResponse = BaseResponse.fromJson(result);
//      switch(baseResponse.statusCode){
//        case 200:
//          if(baseResponse.data.item1){
//            Fluttertoast.showToast(msg: "提交成功");
//            NavigatorUtil.goBack(context);
//          }
//          break;
//      }
//
//    });

  }

}