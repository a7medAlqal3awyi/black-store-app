import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ShareIcon extends StatelessWidget {
  const ShareIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24.88,
      height: 24.88,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black.withOpacity(.3),
          border: Border.all(color: const Color(0xFF4F4F4F), width: 2)),
      child: Padding(
        padding: EdgeInsets.all(4.w),
        child: SvgPicture.asset(
          "assets/icons/share.svg",
          width: 15.5.w,
          height: 15.5.h,
        ),
      ),
    );
  }
}
