import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:valloon/In_Out/In.dart';
import 'package:valloon/function/func.dart';
import 'package:valloon/function/mywidget.dart';
import 'package:valloon/pages/login.dart';

import 'package:valloon/In_Out/In.dart';

class HelloVallon extends StatefulWidget {
  @override
  _HelloVallonState createState() => _HelloVallonState();
}

class _HelloVallonState extends State<HelloVallon> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        //押したら反応するコード
        return await Func.movePage(context, Login());
      },
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              color: Colors.green,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                MyWidget.height66_7(),
                Text(
                  'Hello![ニックネーム]!!',
                  style: TextStyle(
                    fontSize: 30.sp,
                    color: Colors.white,
                  ),
                ),
                MyWidget.height33_35(),
                Container(
                  height: 266.8.h,
                  width: 266.8.w,
                  decoration: BoxDecoration(
                    //color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                ),
                Container(
                  height: 33.35.h,
                ),
                Func.continueNicknameBotton(context, In()),
                MyWidget.height33_35(),
                Func.continueFullnameBotton(context, In()),
              ],
            ),
            Column(
              children: <Widget>[
                MyWidget.height150(),
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
