import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:valloon/function/func.dart';
import 'package:valloon/pages/introduction_birthday.dart';
import 'package:valloon/pages/login.dart';

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
                Container(
                  height: 66.7.h,
                  width: double.infinity,
                ),
                Text(
                  'Hello![ニックネーム]!!',
                  style: TextStyle(
                    fontSize: 30.sp,
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 33.35.h,
                ),
                Container(
                  height: 266.8.h,
                  width: 266.8.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                ),
                Container(
                  height: 33.35.h,
                ),
                Container(
                  height: 66.7.h,
                  width: 275.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(180.r),
                  ),
                  child: SizedBox(
                    child: ElevatedButton(
                      child: Text(
                        'ニックネームで続ける',
                        style: TextStyle(
                          fontSize: 24.sp,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white),
                      onPressed: () async {
                        await Func.movePage(context, Login());
                      },
                    ),
                  ),
                ),
                Container(
                  height: 33.35.h,
                ),
                Container(
                  height: 66.7.h,
                  width: 275.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(180.r),
                  ),
                  child: SizedBox(
                    child: ElevatedButton(
                      child: Text(
                        'フルネームで続ける',
                        style: TextStyle(
                          fontSize: 24.sp,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white),
                      onPressed: () async {
                        await Func.movePage(context, Login());
                      },
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  height: 150.h,
                  width: double.infinity,
                ),
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
