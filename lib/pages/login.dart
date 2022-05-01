import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:valloon/function/func.dart';
import 'package:valloon/pages/introduction_name.dart';

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
                  height: 400.2.w,
                  width: double.infinity,
                  color: Colors.green,
                )
              ],
            ),
            Column(
              children: [
                Container(
                  height: 66.7.w,
                  width: double.infinity,
                ),
                Container(
                  height: 266.8.w,
                  width: 266.8.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.w),
                  ),
                ),
                Container(
                  height: 33.35.w,
                  width: double.infinity,
                ),
                Container(
                  height: 201.w,
                  width: 300.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(10.w),
                  ),
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 133.4.w,
                          width: 300.w,
                          child: Column(
                            children: <Widget>[
                              Func.title('Valloon'),
                              Text(
                                '',
                              ),
                              Text(
                                'サービスの利用を開始するためには、\nサインアップ(ログイン)が必要です。',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              height: 63.365.w,
                              width: 148.125.w,
                              child: ElevatedButton(
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.white),
                                onPressed: () {
                                  Func.movePage(context, Login());
                                },
                              ),
                            ),
                            Container(
                              height: 63.365.w,
                              width: 148.125.w,
                              child: ElevatedButton(
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.white),
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
                Container(
                  height: 81.7.w,
                  width: double.infinity,
                ),
                Container(
                  child: SvgPicture.asset(
                    'lib/images/valloon.svg',
                    width: 256.8.w,
                    height: 256.8.w,
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
