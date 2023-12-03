import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class YellowFavoriteIcon extends StatelessWidget {
  const YellowFavoriteIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.w,
      height: 30.h,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black.withOpacity(.3),
          border: Border.all(color: const Color(0xFF4F4F4F), width: 2)),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: SvgPicture.asset(
          "assets/icons/yellowHeart.svg",
          width: 15.5.w,
          height: 15.5.h,
        ),
      ),
    );
  }
}
