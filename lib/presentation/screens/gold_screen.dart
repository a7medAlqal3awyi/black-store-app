import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_black_store/core/styles/app_styles.dart';
import 'package:the_black_store/core/utils/app_constants.dart';

class GoldScreen extends StatefulWidget {
  const GoldScreen({super.key});

  @override
  State<GoldScreen> createState() => _GoldScreenState();
}

class _GoldScreenState extends State<GoldScreen>
    with SingleTickerProviderStateMixin
    implements TickerProvider {
  @override
  Ticker createTicker(TickerCallback onTick) => Ticker(onTick);

  @override
  Widget build(BuildContext context) {
    TabController tapController = TabController(length: 3, vsync: this);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          AppConstants.gold,
          style: AppConstants.BigTextStyle,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.w),
            child: SvgPicture.asset('assets/icons/goldCalc.svg'),
          ),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: Container(
                width: 327.w,
                height: 60.h,
                decoration: BoxDecoration(
                  color: AppStyles.bg,
                  borderRadius: BorderRadius.circular(16.w),
                ),
                clipBehavior: Clip.none,
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerColor: Colors.transparent,
                  unselectedLabelColor: Colors.white,
                  indicatorColor: primary,
                  labelColor: Colors.black,
                  indicatorPadding: EdgeInsets.all(8.w),
                  labelPadding: EdgeInsets.symmetric(horizontal: 10.w),
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
          )
        ],
      ),
    );
  }
}
