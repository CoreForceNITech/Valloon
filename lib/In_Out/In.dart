import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:valloon/function/func.dart';
import 'package:valloon/function/mywidget.dart';
import 'Out.dart';

class In extends StatefulWidget {
  @override
  _InState createState() => _InState();
}

class _InState extends State<In> {
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
            //背景色を設定する。
            Container(
              color: Colors.green,
            ),
            Column(
              children: [
                //画面上部の色を設定する。
                Container(
                  height: 460.0.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(20),
                      left: Radius.circular(20),
                    ),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            //Column -> 一つ上の階層
            Column(
              children: [
                //画面上部の余白を設定する。
                Container(
                  height: 360.h,
                  width: double.infinity,
                ),
                //Container -> 退室中
                Container(
                  height: 183.w,
                  width: 320.w,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    //枠線をつける
                    border: Border.all(width: 0),
                    //四角の角を取る
                    borderRadius: BorderRadius.circular(10.w),
                  ),
                  //
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        //Container -> "退室中"のWidget
                        Container(
                          height: 100.h,
                          width: 320.w,
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                              color: Colors.white24,
                              spreadRadius: 5,
                              blurRadius: 5,
                              offset: Offset(1, 1),
                            )
                          ]),
                          //Column -> "退出中"テキストの表示
                          child: Column(
                            children: <Widget>[
                              MyWidget.height33_35(),
                              Func.title('退室中'),
                            ],
                          ),
                        ),
                        //Row -> 入室ボタン、退室ボタンを包含するWidget
                        Row(
                          children: <Widget>[
                            //Container -> "入室"の場所を確保
                            Container(
                              height: 50.h,
                              width: 160.w,
                              // ElevatedButton -> "入室"のボタン
                              child: ElevatedButton(
                                //Text -> "入室"
                                child: Text(
                                  '入室',
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
                                //clicked -> Out()に遷移する。
                                onPressed: () {
                                  Func.movePage(context, Out());
                                },
                              ),
                            ),
                            //Container -> "退室"の場所を確保
                            Container(
                              height: 50.h,
                              width: 160.w,
                              // ElevatedButton -> "入室"のボタン
                              child: ElevatedButton(
                                //Text -> "入室"
                                child: Text(
                                  '退室',
                                  style: TextStyle(
                                    color: Colors.green,
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
                                //clicked -> 遷移なし。
                                //onPressed: () {},
                                onPressed: null,
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
