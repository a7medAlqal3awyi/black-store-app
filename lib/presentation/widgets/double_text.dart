import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/styles/app_styles.dart';
import '../../core/utils/app_constants.dart';

class DoubleText extends StatelessWidget {
  const DoubleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            AppConstants.dontHaveAnAccount,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontFamily: fontFamily,
              fontSize: 12,
            ),
          ),
          Text(
            AppConstants.createAnAccount,
            style: TextStyle(
              color: AppStyles.lighyYellow,
              fontWeight: FontWeight.w700,
              fontFamily: fontFamily,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
