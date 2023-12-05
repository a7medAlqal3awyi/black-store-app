import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/utils/app_constants.dart';

// ignore: must_be_immutable
class MyButtonWithIcon extends StatelessWidget {
  final Color color;
  final Color textColor;

  final String text;

  final String? imagePath;
  MyButtonWithIcon({
    super.key,
    this.imagePath,
    this.onTap,
    required this.color,
    required this.text,
    required this.textColor,
  });


  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        height: 52.h,
        width: 327.w,
        padding: EdgeInsets.symmetric(vertical: 10.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.w),
          color: color,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              '$imagePath',
              width: 21.w,
              height: 20.h,
            ),
            SizedBox(
              width: 10.w,
            ),
            Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: textColor,
                fontSize: 14.sp,
                fontFamily: fontFamily,
              ),
            )
          ],
        ),
      ),
    );
  }
}
