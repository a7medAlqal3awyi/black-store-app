import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_black_store/core/utils/app_constants.dart';

class ButtonWithOnlyText extends StatelessWidget {
  final Color color;
  final Color textColor;

  final String text;

  final void Function()? onTap;

  const ButtonWithOnlyText({
    super.key,
    this.onTap,
    required this.color,
    required this.text,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 52.h,
          width: 327.w,
          padding: EdgeInsets.symmetric(vertical: 12.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14.w),
            color: color,
          ),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: textColor,
              fontSize: 16.sp,
              fontFamily: fontFamily,
            ),
          ),
        ),
      ),
    );
  }
}
