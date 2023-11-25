import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_black_store/core/styles/app_styles.dart';
import 'package:the_black_store/core/utils/app_constants.dart';
import 'package:the_black_store/presentation/widgets/alert.dart';
import 'package:the_black_store/presentation/widgets/share_icon.dart';

import '../widgets/column_of_double_text.dart';
import '../widgets/my_small_vertical_divider.dart';

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
          GestureDetector(
            onTap: () {
              showMyAlert(context);
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.w),
              child: SvgPicture.asset('assets/icons/goldCalc.svg'),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(24.w),
        child: SingleChildScrollView(
          child: Column(
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
              ),
              SizedBox(
                height: 20.h,
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: 15,
                scrollDirection: Axis.vertical,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 24,
                    mainAxisExtent: 150),
                itemBuilder: (context, index) {
                  return Container(
                    width: 156.w,
                    height: 134.3.h,
                    padding: EdgeInsets.all(
                      8.53.w,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.w),
                      color: AppStyles.bg,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              width: 46.64.w,
                              height: 46.64.h,
                              child: Image.asset("assets/images/gold.png"),
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            const ShareIcon(),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.83.h),
                          child: Text(
                            AppConstants.gold24,
                            style: TextStyle(
                                fontSize: 11.47.sp,
                                fontWeight: FontWeight.w700,
                                fontFamily: fontFamily,
                                color: Colors.white),
                          ),
                        ),
                        Row(
                          children: [
                            ColumnOfDoubleText(
                              firstText: AppConstants.buy,
                              priceText: AppConstants.forty,
                            ),
                            const MySmallVerticalDivider(),
                            ColumnOfDoubleText(
                              firstText: AppConstants.sell,
                              priceText: AppConstants.forty,
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
