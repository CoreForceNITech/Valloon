import 'package:flutter/material.dart';
import 'package:valloon/function/func.dart';
import 'package:valloon/function/mywidget.dart';
import 'package:valloon/pages/main.dart';
import 'package:valloon/pages/Introduction/Introduction_name.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valloon/pages/login.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  //文字をサーバーに送るために覚えておく変数
  final idController = TextEditingController();
  String _id = '';
  final passwordController = TextEditingController();
  String _password = '';
  final rePasswordController = TextEditingController();
  String _rePassword = '';

  @override
  void dispose() {
    idController.dispose();
    passwordController.dispose();
    rePasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //web,Android上の戻るボタン有効化
    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: Scaffold(
        appBar: Func.myAppBar(),
        body: Container(
          width: double.infinity,
          padding: Func.paddingSize(),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    TextFormField(
                      controller: idController,
                      //入力可能キーボード
                      decoration: const InputDecoration(
                        hintText: 'please your e-mail',
                        labelText: 'メールアドレス',
                      ),
                    ),
                    TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: 'please make password',
                        labelText: 'パスワードの作成',
                      ),
                    ),
                    TextFormField(
                      controller: rePasswordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: 'please enter your password again',
                        labelText: 'パスワードの確認',
                      ),
                    ),
                  ],
                ),
                RaisedButton(
                  child: Text(
                    '送信',
                    style: TextStyle(
                      fontSize: 16.sp,
                    ),
                  ),
                  onPressed: () async {
                    _id = idController.text;
                    _password = passwordController.text;
                    _rePassword = rePasswordController.text;
                    if (_id.contains('@') &&
                        _password != '' &&
                        _rePassword != '' &&
                        _password == _rePassword) {
                      try {
                        await auth.createUserWithEmailAndPassword(
                          email: _id,
                          password: _password,
                        );
                        await MyWidget.storage
                            .write(key: _id, value: _password);
                        await Func.movePage(context, IntroductionName());
                      } catch (e) {
                        print(e.toString());
                      }
                    } else {
                      print("入力が不正です。");
                    }
                  },
                ),
                Func.smallReturnButton(context, Login())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
