import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:the_black_store/core/utils/routes.dart';
import 'package:the_black_store/presentation/widgets/item_of_alloy_tap.dart';

import '../../core/styles/app_styles.dart';
import '../../core/utils/app_constants.dart';
import 'alert.dart';
import 'item_of_cuurecy_tap.dart';
import 'item_of_gold_tap.dart';

class TheGoldScreen extends StatefulWidget {
  const TheGoldScreen({super.key});

  @override
  State<TheGoldScreen> createState() => _TheGoldScreenState();
}

class _TheGoldScreenState extends State<TheGoldScreen>
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
          GestureDetector(
            onTap: () {
              showMyAlert(context);
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.w),
              child: SvgPicture.asset('assets/icons/goldCalc.svg',
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
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
          ),
          SizedBox(
            height: 20.h,
          ),
          SizedBox(
            width: 327.w,
            height: context.deviceHeight,
            child: TabBarView(
              physics: const BouncingScrollPhysics(),
                controller: tapController, children:  const [
              ItemOfGoldTap(),
              ItemOfLollyTap(),

              ItemOfCurrencyTap(),
            ]),
          ),
        ],
      ),
    );
  }
}
