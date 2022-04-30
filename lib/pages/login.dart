import 'package:flutter/material.dart';
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
                  child: Image.asset('lib/images/valloon_demo1.png'),
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
                        Text(
                          'Valloon',
                          style: TextStyle(
                            color: Colors.green,
                          ),
                        ),
                        Text(
                          'サービスの利用を開始するためには、サインアップ(ログイン)が必要です。',
                        ),
                        Row(
                          children: <Widget>[
                            TextButton(
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
                            TextButton(
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
