import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:valloon/pages/Introduction/Introduction_name.dart';
import 'package:valloon/pages/Introduction/Introduction_your.dart';
import 'package:valloon/pages/login.dart';
import 'package:get/get.dart';

import '../In_Out/In.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 667),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Valloon',
          theme: ThemeData(
            primarySwatch: Colors.green,
          ),
          //home: Login(),
          home: Login(),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Loading..."),
      ),
    );
  }
}
