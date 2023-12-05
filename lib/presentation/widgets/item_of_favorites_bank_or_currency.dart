import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/styles/app_styles.dart';
import '../../core/utils/app_constants.dart';

class ItemOfFavoriteRow extends StatelessWidget {
  const ItemOfFavoriteRow(
      {super.key, required this.imagePath, required this.text});

  final String imagePath;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 5),
      child: Container(
        width: 327.w,
        height: 38.h,
        padding: EdgeInsets.all(8.w),
        decoration: BoxDecoration(
          border: BorderDirectional(
            bottom: BorderSide(width: 2, color: AppStyles.bg),
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 33.w,
              height: 33.h,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(9.w),
                  image: const DecorationImage(
                      image: AssetImage("assets/icons/bank.png"))),
            ),
            SizedBox(
              width: 5.w,
            ),
            Text(
              text,
              style: AppConstants.medFontStyle,
            ),
            const Spacer(),
            SvgPicture.asset(imagePath),
          ],
        ),
      ),
    );
  }
}
