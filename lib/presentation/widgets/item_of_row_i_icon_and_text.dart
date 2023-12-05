import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_black_store/core/styles/app_styles.dart';

import '../../core/utils/app_constants.dart';

class ItemOfRowWithiIConAndText extends StatelessWidget {
  const ItemOfRowWithiIConAndText({super.key, required this.text});
  final String text;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327.w,
      height: 69.h,
      padding: EdgeInsets.all(15.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18.w),
          color: AppStyles.bg),
      child: Row(
        children: [
          SvgPicture.asset(
            "assets/icons/iYellow.svg",
          ),
          SizedBox(
            width: 20.h,
          ),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontFamily: fontFamily,
                color: const Color(0xFFC8CDD2),
                fontWeight: FontWeight.w400,
                fontSize: 12.sp,
              ),
            ),
          )
        ],
      ),
    );
  }
}
