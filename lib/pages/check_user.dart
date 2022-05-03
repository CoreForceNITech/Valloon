import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:valloon/function/func.dart';
import 'package:valloon/function/mywidget.dart';
import 'Introduction/Introduction_name.dart';
import 'package:valloon/pages/login.dart';
import 'package:valloon/function/firebase_auth_error.dart';
import 'package:valloon/function/firebase_auth_login.dart';
import 'package:valloon/In_Out/Out.dart';

class CheckUser extends StatefulWidget {
  @override
  _CheckUserState createState() => _CheckUserState();
}

class _CheckUserState extends State<CheckUser> {
    //文字をサーバーに送るために覚えておく変数
    final idController = TextEditingController();
    String _id = '';
    final passwordController = TextEditingController();
    String _password = '';

    //キーの保存用変数
    final _formIDKey = GlobalKey<FormState>();
    final _formPWKey = GlobalKey<FormState>();

    @override
    void dispose() {
      idController.dispose();
      passwordController.dispose();
      super.dispose();
    }

    @override
    Widget build(BuildContext context) {
      //web,Android上の戻るボタン無効化
      return WillPopScope(
        onWillPop: () async {
          return await Func.movePage(context, Login());
        },
        child: Scaffold(
          appBar: Func.myAppBar(),
          body: Container(
            //画面を横一杯に使う
            width: double.infinity,
            //画面端の余白
            padding: Func.paddingSize(),
            child: SingleChildScrollView(
              child: Column(
                //横方向で真ん中
                mainAxisAlignment: MainAxisAlignment.center,
                //縦方向で真ん中
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  //idの入力フォーマット
                  TextFormField(
                    controller: idController,
                    key: _formIDKey,
                    decoration: const InputDecoration(
                      hintText: 'please your mail-address',
                      labelText: 'メールアドレス',
                    ),
                  ),
                  //パスワードの入力フォーマット
                  TextFormField(
                    controller: passwordController,
                    key: _formPWKey,
                    //伏字オン
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: 'please your password',
                      labelText: 'Password',
                    ),
                  ),
                  RaisedButton(
                    child: Text(
                      'ログイン',
                      style: TextStyle(
                        fontSize: 14.sp,
                      ),
                    ),
                    onPressed: () async {
                      //フォームの入力内容を代入
                      _id = idController.text;
                      _password = passwordController.text;
                      final FirebaseAuthResultStatus signInResult =
                      await FirebaseLogin.signInId(_id, _password);
                      if (signInResult != FirebaseAuthResultStatus.Successful) {
                        final errorMessage =
                        FirebaseAuthExceptionHandler.exceptionMessage(
                            signInResult);
                        FirebaseLogin.showErrorDialog(context, errorMessage);
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('正常にログインしました。')));
                        await  Func.movePage(context, Out());
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      );
  }
}