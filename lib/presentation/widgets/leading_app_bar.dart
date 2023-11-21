import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/styles/app_styles.dart';

class LeadingAppBar extends StatelessWidget {
  const LeadingAppBar({super.key, this.onTap});
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.all(10.w),
        child: Container(
          width: 40.w,
          height: 40.h,
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(16.w),
              color: AppStyles.bg),
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

