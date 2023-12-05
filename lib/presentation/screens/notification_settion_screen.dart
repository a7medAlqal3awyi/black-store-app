import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_black_store/core/utils/routes.dart';
import 'package:the_black_store/presentation/widgets/my_switch.dart';

import '../../core/styles/app_styles.dart';
import '../../core/utils/app_constants.dart';
import '../widgets/leading_app_bar.dart';

class NotificationSettingScreen extends StatefulWidget {
  const NotificationSettingScreen({super.key});

  @override
  State<NotificationSettingScreen> createState() =>
      _NotificationSettingScreenState();
}

class _NotificationSettingScreenState extends State<NotificationSettingScreen> {
  bool status = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: LeadingAppBar(
          onTap: () {
            context.pop(context);
          },
        ),
        title: Text(
          AppConstants.notificationSetting,
          style: AppConstants.bigTextStyle,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(24.w),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: Text(
                AppConstants.notifications,
                style: AppConstants.bigTextStyle.copyWith(fontSize: 16),
              ),
            ),
            Container(
              width: 327.w,
              height: 233.h,
              padding: EdgeInsets.all(10.w),
              decoration: BoxDecoration(
                  color: AppStyles.bg,
                  borderRadius: BorderRadius.circular(18.w)),
              child: Column(
                children: [
                  Expanded(
                      child: MySwitchWidget(
                    text: AppConstants.currency,
                  )),
                  Expanded(
                      child: MySwitchWidget(
                    text: AppConstants.gold,
                  )),
                  Expanded(
                      child: MySwitchWidget(
                    text: AppConstants.news,
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
