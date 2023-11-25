import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/utils/app_constants.dart';

class ColumnOfDoubleText extends StatelessWidget {
  const ColumnOfDoubleText(
      {super.key, required this.firstText, required this.priceText});

  final String firstText;
  final String priceText;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            firstText,
            style: TextStyle(
              color: Colors.white.withOpacity(0.7900000214576721),
              fontSize: 8.19.sp,
              fontFamily: fontFamily,
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
          SizedBox(height: 7.19.h),
          Text(
            priceText,
            style: TextStyle(
              color: Colors.white,
              fontSize: 8.19,
              fontFamily: fontFamily,
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
        ],
      ),
    );
  }
}
