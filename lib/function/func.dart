import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:share_plus/share_plus.dart';

class Func {

  static Text title(String str){
    return Text(
      str,
      style: TextStyle(
        fontSize: 24.sp,
        color: Colors.green,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  static EdgeInsets paddingSize() {
    return EdgeInsets.all(8.w);
  }

  static void _share() =>
      Share.share('みんなもシェアスペースを利用しよう!', subject: 'おすすめのシェアスペース!');

  static Widget myShare() {
    return IconButton(
      icon: const Icon(Icons.share),
      onPressed: () => _share(),
    );
  }

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

  static Future movePage(BuildContext context, var pages) async {
    return await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => pages,
      ),
    );
  }

}
