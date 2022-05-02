import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valloon/function/func.dart';
import 'package:valloon/function/mywidget.dart';
import 'package:valloon/pages/hello_valloon.dart';
import 'package:valloon/pages/introduction_your.dart';
import 'package:valloon/pages/login.dart';

class IntroductionIcon extends StatefulWidget {
  @override
  _IntroductionIconState createState() => _IntroductionIconState();
}

class _IntroductionIconState extends State<IntroductionIcon> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        //押したら反応するコード
        return await Func.movePage(context, IntroductionYour());
      },
      child: Scaffold(
        body: Container(
          width: double.infinity,
          padding: Func.paddingSize(),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                MyWidget.height16_675(),
                Func.title('あなたのアイコン!!'),
                MyWidget.height16_675(),
                Text(
                  'お好きなアイコンを選択\nまたはアップロードしてください',
                  style: TextStyle(
                    color: Colors.green,
                  ),
                ),
                Container(
                  height: 100.h,
                  child: Row(
                    children: <Widget>[
                      MyWidget.circle(Colors.grey, 75.w),
                      MyWidget.width15(),
                      MyWidget.circle(Colors.grey, 75.w),
                      MyWidget.width15(),
                      MyWidget.circle(Colors.grey, 75.w),
                      MyWidget.width15(),
                      MyWidget.circle(Colors.grey, 75.w),
                    ],
                  ),
                ),
                Container(
                  height: 175.h,
                  child: Row(
                    children: <Widget>[
                      MyWidget.width20(),
                      MyWidget.circle(Colors.grey, 150.w),
                      MyWidget.width50(),
                      Container(
                        height: 120.h,
                        width: 80.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.r),
                        ),
                        child: SizedBox(
                          child: ElevatedButton(
                            child: Text(
                              '消去',
                              style: TextStyle(
                                fontSize: 24.sp,
                              ),
                            ),
                            onPressed: () async {
                              await Func.movePage(context, IntroductionIcon());
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Func.consentProcess(context, HelloVallon()),
                MyWidget.height16_675(),
                Func.largeReturnButton(context, IntroductionYour())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
