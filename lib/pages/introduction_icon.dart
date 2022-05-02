import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valloon/function/func.dart';
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
        appBar: Func.myAppBar(),
        body: Container(
          width: double.infinity,
          padding: Func.paddingSize(),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Func.title('あなたのアイコン!!'),
                Text(''),
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
                      Container(
                        width: 75.w,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),
                      ),
                      Container(
                        width: 15.w,
                        color: Colors.white,
                      ),
                      Container(
                        width: 75.w,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),
                      ),
                      Container(
                        width: 15.w,
                        color: Colors.white,
                      ),
                      Container(
                        width: 75.w,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),
                      ),
                      Container(
                        width: 15.w,
                        color: Colors.white,
                      ),
                      Container(
                        width: 75.w,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 175.h,
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 20.w,
                        color: Colors.white,
                      ),
                      Container(
                        width: 150.w,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),
                      ),
                      Container(
                        width: 50.w,
                        color: Colors.white,
                      ),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
