import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/styles/app_styles.dart';
import '../../core/utils/app_constants.dart';

class MyTapBar extends StatefulWidget {
  const MyTapBar({super.key});

  @override
  State<MyTapBar> createState() => _MyTapBarState();
}

class _MyTapBarState extends State<MyTapBar>
    with SingleTickerProviderStateMixin
    implements TickerProvider {
  @override
  Ticker createTicker(TickerCallback onTick) => Ticker(onTick);

  @override
  Widget build(BuildContext context) {
    TabController tapController = TabController(length: 3, vsync: this);

    return Center(
      child: Padding(
        padding: EdgeInsets.only(top: 10.h),
        child: Container(
          width: 327.w,
          height: 60.h,
          decoration: BoxDecoration(
            color: AppStyles.bg,
            borderRadius: BorderRadius.circular(16.w),
          ),
          child: Center(
            child: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              dividerColor: Colors.transparent,
              unselectedLabelColor: Colors.white,
              indicatorColor: primary,
              labelColor: Colors.black,
              indicatorPadding: EdgeInsets.all(8.w),
              labelPadding:
                  EdgeInsets.symmetric(horizontal: 10.w, vertical: 13),
              labelStyle: TextStyle(
                fontFamily: fontFamily,
                fontWeight: FontWeight.w700,
                fontSize: 16.sp,
              ),
              indicator: BoxDecoration(
                  color: primary,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(16.w)),
              physics: const BouncingScrollPhysics(),
              splashBorderRadius: BorderRadius.circular(16.w),
              controller: tapController,
              tabs: [
                Tab(
                  text: AppConstants.gold,
                ),
                Tab(
                  text: AppConstants.bullion,
                ),
                Tab(
                  text: AppConstants.currency,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
