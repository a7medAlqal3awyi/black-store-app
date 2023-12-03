import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/styles/app_styles.dart';
import '../../core/utils/app_constants.dart';

class WidgetOfIconTextIcon extends StatelessWidget {
  const WidgetOfIconTextIcon(
      {super.key, required this.iconPath, required this.txt,
      required this.onTap});

  final String iconPath;
  final String txt;

 final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    onTap:onTap ,
      child: Padding(
        padding: EdgeInsets.only(bottom: 16.h),
        child: Container(
          width: 327.w,
          height: 48.h,
          padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 13.h),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.w), color: AppStyles.bg),
          child: Row(
            children: [
              SvgPicture.asset(iconPath),
              SizedBox(
                width: 12.w,
              ),
              Text(
                txt,
                style: AppConstants.titleStyle,
              ),
              const Spacer(),
              SvgPicture.asset("assets/icons/ArrowRight.svg"),
            ],
          ),
        ),
      ),
    );
  }
}
