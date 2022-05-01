import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:valloon/function/func.dart';
import 'package:valloon/function/size_config.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
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
                  height: SizeConfig.blockSizeVertical! * 60,
                  width: double.infinity,
                  color: Colors.green,
                )
              ],
            ),
            Column(
              children: [
                Container(
                  height: SizeConfig.blockSizeVertical! * 10,
                  width: double.infinity,
                  color: Colors.green,
                ),
                Container(
                  height: SizeConfig.blockSizeVertical! * 40,
                  child: SvgPicture.asset('lib/images/valloon.svg',
                      width: 320, height: 320),
                ),
                Container(
                  height: SizeConfig.blockSizeVertical! * 5,
                  width: double.infinity,
                  color: Colors.green,
                ),
                Container(
                  height: SizeConfig.blockSizeVertical! * 30,
                  width: SizeConfig.blockSizeHorizontal! * 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: SizeConfig.blockSizeVertical! * 20,
                          width: SizeConfig.blockSizeHorizontal! * 79,
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Valloon',
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 30.sp,
                                ),
                              ),
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
                              height: SizeConfig.blockSizeVertical! * 9.5,
                              width: SizeConfig.blockSizeHorizontal! * 39.5,
                              child: RaisedButton(
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                onPressed: () {
                                  Func.movePage(context, Login());
                                },
                              ),
                            ),
                            Container(
                              height: SizeConfig.blockSizeVertical! * 9.5,
                              width: SizeConfig.blockSizeHorizontal! * 39.5,
                              child: RaisedButton(
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                onPressed: () {
                                  Func.movePage(context, Login());
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
          ],
        ),
      ),
    );
  }
}
