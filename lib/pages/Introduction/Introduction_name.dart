import 'package:flutter/material.dart';
import 'package:valloon/function/func.dart';
import 'package:valloon/pages/login.dart';

class IntroductionName extends StatefulWidget {
  @override
  _IntroductionNameState createState() => _IntroductionNameState();
}

class _IntroductionNameState extends State<IntroductionName> {
  @override
  Widget build(BuildContext context){
    return WillPopScope(
        onWillPop: () async {
      //押したら反応するコード
      return await Func.movePage(context, Login());
      },
      child: Scaffold(),
    );
  }

}