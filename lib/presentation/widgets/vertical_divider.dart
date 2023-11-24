import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyVerticalDivider extends StatelessWidget {
  const MyVerticalDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 2.w,
      height: 39.h,
      color: const Color(0xFFE0E0E0),
    );
  }
}
