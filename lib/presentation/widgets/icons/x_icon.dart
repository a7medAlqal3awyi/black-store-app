import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:the_black_store/core/utils/routes.dart';

class XIcon extends StatelessWidget {
  const XIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 28.w,
        height: 28.h,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFF4F4F4F),
        ),
        child: Padding(
          padding: EdgeInsets.all(8.w),
          child: SvgPicture.asset("assets/icons/close.svg"),
        ),
      ),
      onTap: () {
        context.pop(context);
      },
    );
  }
}
