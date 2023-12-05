import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/styles/app_styles.dart';
import '../../../core/utils/app_constants.dart';

class CustomTextAndIconButton extends StatelessWidget {
  const CustomTextAndIconButton(
      {super.key, required this.txt, required this.iconPath, this.onTap});

  final String txt;
  final String iconPath;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 327.w,
        height: 48.h,
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(iconPath),
            SizedBox(
              width: 10.w,
            ),
            Text(
              txt,
              style: TextStyle(
                  fontFamily: fontFamily,
                  fontWeight: FontWeight.w700,
                  color: AppStyles.redColor,
                  fontSize: 14.sp),
            ),
          ],
        ),
      ),
    );
  }
}
