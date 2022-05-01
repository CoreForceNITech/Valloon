import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valloon/function/func.dart';
import 'package:valloon/pages/login.dart';

class IntroductionName extends StatefulWidget {
  @override
  _IntroductionNameState createState() => _IntroductionNameState();
}

class _IntroductionNameState extends State<IntroductionName> {
  //文字をサーバーに送るために覚えておく変数
  final surnameController = TextEditingController();
  String _surname = '';
  final nameController = TextEditingController();
  String _name = '';

  //キーの保存用変数
  final _formSKey = GlobalKey<FormState>();
  final _formNKey = GlobalKey<FormState>();

  @override
  void dispose() {
    surnameController.dispose();
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        //押したら反応するコード
        return await Func.movePage(context, Login());
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
                Text(
                  '名前を入力',
                  style: TextStyle(
                    fontSize: 24.sp,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextFormField(
                  controller: surnameController,
                  decoration: const InputDecoration(
                    hintText: '(例:MORI)',
                    labelText: '姓',
                    labelStyle: TextStyle(color: Colors.green),
                  ),
                ),
                TextFormField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    hintText: '(例:DAIKI)',
                    labelText: '名',
                    labelStyle: TextStyle(color: Colors.green),
                  ),
                ),
                Text(''),
                RichText(
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
                ),
                Container(
                  height: 66.7.w,
                ),
                Container(
                  height: 66.7.w,
                  width: 225.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.w),
                  ),
                  child: SizedBox(
                    child: ElevatedButton(
                        child: Text(
                          '同意して登録',
                          style: TextStyle(
                            fontSize: 24.sp,
                          ),
                        ),
                      onPressed: () async {
                        await Func.movePage(context, Login());
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
