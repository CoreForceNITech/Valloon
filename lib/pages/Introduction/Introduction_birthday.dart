import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:valloon/function/func.dart';
import 'package:valloon/pages/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:valloon/function/mywidget.dart';
import 'package:valloon/pages/main.dart';

import 'Introduction_name.dart';
import 'Introduction_your.dart';

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

  var targetday;

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
                ElevatedButton(
                  child: Text('クリックして設定'),
                  onPressed: () async {
                    DatePicker.showDatePicker(
                      context,
                      showTitleActions: true,
                      minTime: DateTime(1920, 1, 1),
                      maxTime: DateTime(2022, 12, 31),
                      onConfirm: (date) {
                        setState(
                              () {
                            targetday = date;
                          },
                        );
                      },
                      currentTime: targetday,
                      locale: LocaleType.jp,
                    );
                    _birthday = targetday;
                  },
                ),
                if (targetday != null)
                    Text('誕生日: $targetday'),
                Row(
                  children: <Widget>[
                    MyWidget.width37_5(),
                    Func.smallReturnButton(context, IntroductionName()),
                    MyWidget.width75(),
                    Container(
                      height: 44.7.h,
                      width: 112.5.w,
                      child: SizedBox(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            shape: const StadiumBorder(),
                          ),
                          child: Text(
                            '次へ',
                            style: TextStyle(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () async {
                            if (targetday != null) {
                              try {
                                await users.add({
                                  '_birthday': _birthday,
                                });
                                await Func.movePage(context, IntroductionYour());
                              } catch (e) {
                                print(e.toString());
                              }
                            }
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
