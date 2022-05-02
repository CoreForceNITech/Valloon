import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:share_plus/share_plus.dart';

class Func {
  //プライバシーポリシーと利用規約の同意用文章の手順的結合モジュール
  static Widget consentProcess(BuildContext context, StatefulWidget page) {
    return Column(
      children: <Widget>[
        consentMessage(context),
        Container(
          height: 16.675.h,
        ),
        consentButton(context, page),
      ],
    );
  }

  static RichText consentMessage(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          style: Theme.of(context).textTheme.bodyText2,
          children: const [
            TextSpan(
              text: '[同意して登録]をタップすると、',
            ),
            TextSpan(
              text: 'プライバシーポリシー',
              style: TextStyle(color: Colors.green),
            ),
            TextSpan(
              text: 'と',
            ),
            TextSpan(
              text: '利用規約',
              style: TextStyle(color: Colors.green),
            ),
            TextSpan(
              text: 'に同意したことになります。',
            ),
          ]),
    );
  }

  static Container smallNextButton(BuildContext context, StatefulWidget page) {
    return haveTextButton(context, page, 66.7.h, 112.5.w, '次へ', Colors.green);
  }

  static Container consentButton(BuildContext context, StatefulWidget page) {
    return haveTextButton(context, page, 66.7.h, 225.w, '同意して登録', Colors.green);
  }

  static Container smallReturnButton(
      BuildContext context, StatefulWidget page) {
    return haveTextButton(context, page, 66.7.h, 112.5.w, '戻る', Colors.grey);
  }

  static Container largeReturnButton(
      BuildContext context, StatefulWidget page) {
    return haveTextButton(context, page, 66.7.h, 225.w, '戻る', Colors.grey);
  }

  static Container startLoginButton(BuildContext context, StatefulWidget page){
    return haveTextButton(context, page, 63.365.h, 148.125.w, 'Login', Colors.white);
  }

  static Container signUpButton(BuildContext context, StatefulWidget page){
    return haveTextButton(context, page, 63.365.h, 148.125.w, 'Sign Up', Colors.green);
  }

  static Container haveTextButton(BuildContext context, StatefulWidget page,
      double _height, double _width, String text, Color color) {
    return Container(
      height: _height,
      width: _width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(180.r),
      ),
      child: SizedBox(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: color,
            shape: const StadiumBorder(),
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: () async {
            await Func.movePage(context, page);
          },
        ),
      ),
    );
  }

  //ページの一番上に表示する文字とログイン画面のValloonにおける文字定義
  static Text title(String str) {
    return Text(
      str,
      style: TextStyle(
        fontSize: 24.sp,
        color: Colors.green,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  //余白定義
  static EdgeInsets paddingSize() {
    return EdgeInsets.all(8.r);
  }

  //共有機能のための関数
  static void _share() =>
      Share.share('みんなもシェアスペースを利用しよう!', subject: 'おすすめのシェアスペース!');

  static Widget myShare() {
    return IconButton(
      icon: const Icon(Icons.share),
      onPressed: () => _share(),
    );
  }

  //Appbarの共通のための関数
  static PreferredSizeWidget? myAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      shadowColor: Colors.white,
      iconTheme: IconThemeData(
        color: Colors.green,
      ),
      //共有(share)のボタン
      actions: [
        myShare(),
      ],
    );
  }

  //ページ遷移のための関数
  static Future movePage(BuildContext context, var pages) async {
    return await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => pages,
      ),
    );
  }
}
