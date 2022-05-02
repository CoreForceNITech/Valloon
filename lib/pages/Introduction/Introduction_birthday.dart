import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valloon/function/func.dart';
import 'package:valloon/pages/Introduction/Introduction_your.dart';
import 'package:valloon/pages/login.dart';

import 'Introduction_name.dart';

class IntroductionBirthday extends StatefulWidget {
  @override
  _IntroductionBirthdayState createState() => _IntroductionBirthdayState();
}

class _IntroductionBirthdayState extends State<IntroductionBirthday> {
  //文字をサーバーに送るために覚えておく変数
  final birthdayController = TextEditingController();
  String _birthday = '';

  //キーの保存用変数
  final _formBKey = GlobalKey<FormState>();

  @override
  void dispose() {
    birthdayController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        //押したら反応するコード
        return await Func.movePage(context, IntroductionName());
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
                Func.title('誕生日の設定'),
                TextButton(
                  onPressed: () {
                    Func.movePage(context, IntroductionYour());
                  },
                  child: Text('OK'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
