import 'package:flutter/material.dart';
import 'package:valloon/function/func.dart';
import 'package:valloon/pages/introduction_birthday.dart';
import 'package:valloon/pages/login.dart';

class IntroductionYour extends StatefulWidget {
  @override
  _IntroductionYourState createState() => _IntroductionYourState();
}

class _IntroductionYourState extends State<IntroductionYour> {
  //文字をサーバーに送るために覚えておく変数
  final hobbyController = TextEditingController();
  String _hobby = '';
  final willdoController = TextEditingController();
  String _willdo = '';
  final otherController = TextEditingController();
  String _other = '';

  //キーの保存用変数
  final _formHKey = GlobalKey<FormState>();
  final _formWKey = GlobalKey<FormState>();
  final _formCKey = GlobalKey<FormState>();

  @override
  void dispose() {
    hobbyController.dispose();
    willdoController.dispose();
    otherController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        //押したら反応するコード
        return await Func.movePage(context, IntroductionBirthday());
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
                Func.title('あなたのことを教えてください'),
                TextFormField(
                  controller: hobbyController,
                  decoration: const InputDecoration(
                    hintText: '(例:ゲーム)',
                    labelText: 'あなたの趣味はなんですか',
                    labelStyle: TextStyle(color: Colors.green),
                  ),
                ),
                TextFormField(
                  controller: willdoController,
                  decoration: const InputDecoration(
                    hintText: '(例:子どもが欲しい)',
                    labelText: '将来やりたいことはなんですか',
                    labelStyle: TextStyle(color: Colors.green),
                  ),
                ),
                TextFormField(
                  controller: otherController,
                  decoration: const InputDecoration(
                    hintText: '(例:気軽に声をかけてください！)',
                    labelText: '他の人へ一言！',
                    labelStyle: TextStyle(color: Colors.green),
                  ),
                ),
                TextButton(
                  onPressed: (){
                    Func.movePage(context, Login());
                  },
                  child: Text('OK'),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}