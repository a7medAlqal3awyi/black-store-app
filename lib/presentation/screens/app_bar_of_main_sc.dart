import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:the_black_store/core/utils/routes.dart';
import 'package:the_black_store/presentation/screens/notification/notification_screen.dart';

import '../../core/styles/app_styles.dart';
import '../../core/utils/app_constants.dart';

class AppBarMainScreen extends StatelessWidget {
  const AppBarMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 48.w,
          height: 48.h,
          child: CircleAvatar(
            backgroundColor: const Color(0xFFBDBDBD),
            child: SizedBox(
              width: 43.w,
              height: 43.h,
              child: const CircleAvatar(
                backgroundImage: AssetImage("assets/images/ahmed_suit.jpg"),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 20.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppConstants.wellcome,
              style: TextStyle(
                fontFamily: fontFamily,
                fontWeight: FontWeight.w700,
                fontSize: 12.sp,
                color: const Color(0xFFBDBDBD),
              ),
            ),
            Text(
              AppConstants.myName,
              style: TextStyle(
                fontFamily: fontFamily,
                fontWeight: FontWeight.w700,
                fontSize: 14.sp,
                color: Colors.white,
              ),
            ),
          ],
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {

          context.push(const NotificationScreen());
          },
          child: Container(
            width: 48.w,
            height: 48.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppStyles.bg,
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SvgPicture.asset("assets/icons/Notification.svg"),
            ),
          ),
        ),
      ],
    );
  }
}
