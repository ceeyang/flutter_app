import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            LoginView(),
          ],
        ),
      ),
    );
  }
}


class LoginView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _loginViewState();
  }
}

class _loginViewState extends State<LoginView> {

  final registerFormKey = GlobalKey<FormState>();

  String userName, password;

  bool autovalidate = false;


  void submitLoginForm () {

    /// 提交之前执行验证
    if (registerFormKey.currentState.validate()) {

      registerFormKey.currentState.save();

      debugPrint("username: $userName");
      debugPrint("password: $password");

      /// 获取最近的 Scaffold
      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text("登录中,请稍后...."),
        )
      );
    }

    else {
      /// 打开自动表单自动验证功能
      autovalidate = true;
    }
  }

  String validatorUsername (value) {
    if (value.isEmpty) {
      return "Username is required.";
    }
    return null;
  }

  String validatorPassword (value) {
    if (value.isEmpty) {
      return "Password is required.";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Form(
      key: registerFormKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: "UserName",
              hintText: "Please input your username",
              helperText: "",
            ),
            onSaved: (value) {
              userName = value;
            },
            validator: validatorUsername,
            autovalidate: autovalidate,
          ),
          TextFormField(
            obscureText: true,
            autovalidate: autovalidate,
            decoration: InputDecoration(
              labelText: "Password",
              hintText: "Please input your password",
              helperText: "",
            ),
            onSaved: (value) {
              password = value;
            },
            validator: validatorPassword,
          ),
          SizedBox(height: 20,),
          Container(
            width: double.infinity,
            child: RaisedButton(
              color: Theme.of(context).accentColor,
              child: Text("Login", style: TextStyle(color: Colors.white),),
              elevation: 1.0,
              onPressed: submitLoginForm,
            ),
          ),
        ],
      ),
    );
  }




//  final acountTextEditingController = TextEditingController();
//  final psdTextEditingController = TextEditingController();
//
//  @override
//  void dispose() {
//    super.dispose();
//
//    acountTextEditingController.dispose();
//    psdTextEditingController.dispose();
//  }
//
//  @override
//  void initState() {
//    super.initState();
//
//    acountTextEditingController.addListener(() {
//      debugPrint("${acountTextEditingController.text}");
//    });
//
//    psdTextEditingController.addListener((){
//      debugPrint("${psdTextEditingController.text}");
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return Material(
//      child: Column(
//        children: <Widget>[
//          TextField(
//            decoration: InputDecoration(
//              icon: Icon(Icons.account_box),
//              labelText: "账号",
//              hintText: "请输入您的账号",
//            ),
//            controller: acountTextEditingController,
//          ),
//          TextField(
//            decoration: InputDecoration(
//              icon: Icon(Icons.lock),
//              labelText: "密码",
//              hintText: "请输入您的密码",
//            ),
//            controller: psdTextEditingController,
//          ),
//        ],
//      ),
//    );
//  }
}
