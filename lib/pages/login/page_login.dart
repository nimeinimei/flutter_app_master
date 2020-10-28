import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_master/fluro/NavigatorUtil.dart';
import 'package:flutter_app_master/service/login_service.dart';
import 'package:flutter_app_master/utils/utils.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginState();
}

class LoginState extends State<Login> {
  final formKey = GlobalKey<FormState>();
  var username = '';
  var password = '';
  var adminToken = '';
  bool showPassword = false;
  TextEditingController userNameCon = TextEditingController();
  TextEditingController pwdCon = TextEditingController();
  save() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("userName", userNameCon.value.text.toString());
    prefs.setString("pwd", pwdCon.value.text.toString());
    prefs.setString("adminToken", adminToken);
  }

  Future<String> getName() async {
    var userName;

    SharedPreferences prefs = await SharedPreferences.getInstance();
    userName = prefs.getString('userName');
    return userName;
  }

  Future<String> getPwd() async {
    var pwd;

    SharedPreferences prefs = await SharedPreferences.getInstance();
    pwd = prefs.getString('pwd');
    return pwd;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future<String> userName = getName();
    userName.then((String userName) {
      setState(() {
        username = userName;
        userNameCon.text = userName;
      });
    });
    Future<String> pwd = getPwd();
    pwd.then((String pwd) {
      setState(() {
        password = pwd;
        pwdCon.text = pwd;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.bottomLeft,
              height: 120,
              child: Text(
                'Hi，欢迎使用',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 30, 20, 10),
              child: TextField(
                controller: userNameCon,
                decoration: InputDecoration(
                  labelText: '请输入账号',
                ),
                onChanged: (value) {
                  this.setState(() {
                    username = value;
                  });
                },
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: TextField(
                controller: pwdCon,
                decoration: InputDecoration(
                  labelText: '请输入密码',
                  suffixIcon: GestureDetector(
                    child: Icon(Icons.remove_red_eye, color: Colors.black26),
                    onTap: () {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                  ),
                ),
                obscureText: !showPassword,
                onChanged: (value) {
                  this.setState(() {
                    password = value;
                  });
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text("忘记密码"),
              ],
            ),
            Container(
              height: 50.0,
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(0, 40, 0, 10),
              child: RaisedButton(
                color: Colors.red,
                disabledColor: Color(0xFFEEB4B8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Text(
                  '登录',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                ),
                onPressed:
                    (!isNullOrEmpty(username) && !isNullOrEmpty(password))
                        ? _handleLogin
                        : null,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("验证码登录"),
                GestureDetector(
                  child: Text("新用户注册"),
                  onTap: () {
                    NavigatorUtil.goRegistPage(context);
                  },
                ),
              ],
            ),
            Container(
                alignment: Alignment.center,
                height: 20.0,
                width: double.infinity,
                margin: EdgeInsets.fromLTRB(0, 40, 0, 40),
                child: RichText(
                    text: TextSpan(
                        text: '登录即表示同意',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                        ),
                        children: [
                      TextSpan(
                        text: '《西瓜鱼服务协议》',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 13,
                        ),
                      ),
                      TextSpan(text: '和 '),
                      TextSpan(
                          text: "《隐私政策》",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 13,
                          ))
                    ]))),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(height: 0.5, color: Colors.grey),
                    ),
                    Container(
                        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Text('第三方登录')),
                    Expanded(
                      child: Container(height: 0.5, color: Colors.grey),
                    ),
                  ],
                ),
                IconButton(
                    icon: Image.asset('assets/weixin.png'), onPressed: null)
              ],
            )
          ],
        ),
      ),
    );
  }

  _handleLogin() async {
    var res = await LoginService.login(username, password);
    switch (res.statusCode) {
      case 200:
        if (res.data.item1) {
          Fluttertoast.showToast(msg: "登陆成功");
          adminToken = res.data.item2;
          save();
          NavigatorUtil.goMainPage(context);
        } else {
          Fluttertoast.showToast(msg: res.data.item2);
        }
        break;
    }
  }
}
