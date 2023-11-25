import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MySmallVerticalDivider extends StatelessWidget {
  const MySmallVerticalDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 2.w,
      height: 18.h,
      color: const Color(0xFF4F4F4F),
    );
  }
}
