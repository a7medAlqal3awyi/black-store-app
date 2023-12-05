import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_black_store/core/styles/app_styles.dart';
import 'package:the_black_store/core/utils/app_constants.dart';
import '../widgets/column_of_double_text.dart';
import '../widgets/icons/favorite_icon.dart';
import '../widgets/icons/share_icon.dart';
import '../widgets/my_small_vertical_divider.dart';
import '../widgets/vertical_divider.dart';
import 'app_bar_of_main_sc.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            children: [
              SafeArea(
                  child: SizedBox(
                height: 0.h,
              )),
              const AppBarMainScreen(),
              SizedBox(
                height: 20.h,
              ),
              Text(
                AppConstants.blackMarket,
                style: TextStyle(
                    fontFamily: fontFamily,
                    fontSize: 28.sp,
                    color: primary,
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                AppConstants.bkamFeBlackStore,
                style: TextStyle(
                    fontFamily: fontFamily,
                    fontSize: 14.sp,
                    color: AppStyles.lighyYellow,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 20.w),
              Container(
                width: 327.w,
                height: 92.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16.w)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/icons/flag-egypt.svg"),
                          SizedBox(
                            width: 15.w,
                          ),
                          Text(
                            AppConstants.usDollor,
                            style: TextStyle(
                                fontFamily: fontFamily,
                                fontWeight: FontWeight.w700,
                                fontSize: 10.sp,
                                color: const Color(0xFF4F4F4F)),
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          SvgPicture.asset("assets/icons/ArrowDown.svg"),
                        ],
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
              ),
              SizedBox(height: 20.w),
              // ToDo Will add todo
              Container(
                height: 303.h,
                width: 375.w,
                color: Colors.black,
                child: SvgPicture.asset("assets/images/graph.svg"),
              ),
              SizedBox(height: 20.w),

              Container(
                width: 327.w,
                height: 60.h,
                decoration: BoxDecoration(
                    color: primary, borderRadius: BorderRadius.circular(12.w)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            AppConstants.avgPrice,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w800,
                                fontFamily: fontFamily,
                                color: const Color(0xFF333333)),
                          ),
                        ),
                        const MyVerticalDivider(),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                AppConstants.buy,
                                style: TextStyle(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: fontFamily,
                                    color: const Color(0xFF362727)),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                AppConstants.forty,
                                style: TextStyle(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: fontFamily,
                                    color: const Color(0xFF362727)),
                              ),
                            ],
                          ),
                        ),
                        const MyVerticalDivider(),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      AppConstants.sell,
                                      style: TextStyle(
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: fontFamily,
                                          color: const Color(0xFF362727)),
                                    ),
                                    Text(
                                      AppConstants.forty,
                                      style: TextStyle(
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: fontFamily,
                                          color: const Color(0xFF0E0E0E)),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 20.w,
                                ),
                                SvgPicture.asset("assets/icons/machine.svg")
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),

              GridView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: 10,
                scrollDirection: Axis.vertical,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 4/3.4,

                  crossAxisSpacing: 1,
                  mainAxisSpacing: 2,
                ),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(8.w),
                    child: Container(
                      width: 156.w,
                      height: 134.3.h,
                      decoration: BoxDecoration(
                        color: AppStyles.bg,
                        borderRadius: BorderRadius.circular(7.69.w),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const ShareIcon(),
                                SizedBox(
                                    width: 46.64.w,
                                    height: 46.64.h,
                                    child: Image.asset(
                                      "assets/icons/bank.png",
                                    )),
                                const FavoriteIcon()
                              ],
                            ),
                          ),
                          Text(
                            AppConstants.bankMasr,
                            style: TextStyle(
                                fontFamily: fontFamily,
                                fontWeight: FontWeight.w700,
                                fontSize: 11.47.sp),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text(
                                        AppConstants.buy,
                                        style: TextStyle(
                                            fontSize: 8.19.sp,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: fontFamily),
                                      ),
                                      Text(
                                        AppConstants.forty,
                                        style: TextStyle(
                                            fontSize: 8.19.sp,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: fontFamily),
                                      ),
                                    ],
                                  ),
                                ),
                                const MySmallVerticalDivider(),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text(
                                        AppConstants.buy,
                                        style: TextStyle(
                                            fontSize: 8.19.sp,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: fontFamily),
                                      ),
                                      Text(
                                        AppConstants.forty,
                                        style: TextStyle(
                                            fontSize: 8.19.sp,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: fontFamily),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
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
