import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyWidget {
  static Container height66_7() {
    return Container(
      height: 66.7.h,
    );
  }

  static Container height33_35() {
    return Container(
      height: 33.35.h,
    );
  }

  static Container height81_7() {
    return Container(
      height: 81.7.h,
    );
  }

  static Container width37_5() {
    return Container(
      width: 37.5.w,
    );
  }

  static Container width75() {
    return Container(
      width: 75.w,
    );
  }

  static Container width15() {
    return Container(
      width: 15.w,
    );
  }

  static Container height16_675() {
    return Container(
      height: 16.675.h,
    );
  }

  static Container width20() {
    return Container(
      width: 20.w,
    );
  }

  static Container width50() {
    return Container(
      width: 50.w,
    );
  }

  static Container height150() {
    return Container(
      height: 150.h,
    );
  }

  static circle(Color color, double diameter) {
    return Container(
      width: diameter,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}
