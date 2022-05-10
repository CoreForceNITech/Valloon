import 'package:flutter/material.dart';
import 'package:valloon/function/func.dart';
import 'package:valloon/function/mywidget.dart';
import 'package:valloon/pages/login.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valloon/pages/main.dart';
import 'Introduction_birthday.dart';
import 'package:valloon/pages/login.dart';

class IntroductionName extends StatefulWidget {
  @override
  _IntroductionNameState createState() => _IntroductionNameState();
}

class _IntroductionNameState extends State<IntroductionName> {
  //文字をサーバーに送るために覚えておく変数
  final surnameController = TextEditingController();
  String _surname = '';
  final nameController = TextEditingController();
  String _name = '';

  //キーの保存用変数
  final _formSKey = GlobalKey<FormState>();
  final _formNKey = GlobalKey<FormState>();

  @override
  void dispose() {
    surnameController.dispose();
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        //押したら反応するコード
        return await Func.movePage(context, Login());
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
                Func.title('名前を入力'),
                TextFormField(
                  controller: surnameController,
                  decoration: const InputDecoration(
                    hintText: '(例:MORI)',
                    labelText: '姓',
                    labelStyle: TextStyle(color: Colors.green),
                  ),
                ),
                TextFormField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    hintText: '(例:DAIKI)',
                    labelText: '名',
                    labelStyle: TextStyle(color: Colors.green),
                  ),
                ),
                MyWidget.height66_7(),
                Row(
                  children: <Widget>[
                    MyWidget.width37_5(),
                    Func.smallReturnButton(context, Login()),
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
                            _surname = surnameController.text;
                            _name = nameController.text;
                            if (!(_surname == '' || _name == '')) {
                              try {
                                await users.add({
                                  'surname': _surname,
                                  'name': _name,
                                });
                                await Func.movePage(context, IntroductionBirthday());
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
