import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:valloon/function/func.dart';
import 'package:valloon/function/mywidget.dart';
import 'Introduction/Introduction_name.dart';
import 'package:valloon/pages/check_user.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    //web,Android上の戻るボタン
    return WillPopScope(
      onWillPop: () async {
        //押したら反応するコード
        return false;
      },
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Column(
              children: [
                Container(
                  height: 460.2.h,
                  width: double.infinity,
                  color: Colors.green,
                )
              ],
            ),
            Column(
              children: [
                MyWidget.height66_7(),
                Container(
                  height: 260.8.h,
                  width: 266.8.w,
                  decoration: BoxDecoration(
                    //color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                ),
                MyWidget.height33_35(),
                Container(
                  height: 183.h,
                  width: 322.0.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 120.h,
                          width: 320.w,
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                              color: Colors.white24,
                              spreadRadius: 5,
                              blurRadius: 5,
                              offset: Offset(1, 1),
                            )
                          ]),
                          child: Column(
                            children: <Widget>[
                              MyWidget.height33_35(),
                              Func.title('Valloon'),
                              Text(
                                '',
                              ),
                              //MyWidget.height16_675(),
                              Text(
                                'サービスの利用を開始するためには、\nサインイン(ログイン)が必要です。',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              height: 60.h,
                              width: 160.0.w,
                              child: ElevatedButton(
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(0),
                                      topLeft: Radius.circular(0),
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(0),
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  Func.movePage(context, CheckUser());
                                },
                              ),
                            ),
                            Container(
                              height: 60.h,
                              width: 160.w,
                              child: ElevatedButton(
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(0),
                                      topLeft: Radius.circular(0),
                                      bottomLeft: Radius.circular(0),
                                      bottomRight: Radius.circular(10),
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  Func.movePage(context, IntroductionName());
                                },
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                MyWidget.height81_7(),
                Container(
                  child: SvgPicture.asset(
                    'lib/images/valloon.svg',
                    width: 256.8.w,
                    height: 256.8.h,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
