import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/styles/app_styles.dart';
import '../../../core/utils/app_constants.dart';
import '../../widgets/my_small_vertical_divider.dart';
import '../../widgets/share_icon.dart';
import '../../widgets/yellow_fav_icon.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          AppConstants.favourite,
          style: AppConstants.bigTextStyle,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 10),
        child: GridView.builder(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemCount: 20,
          scrollDirection: Axis.vertical,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 1,
            childAspectRatio: 4 / 3.7,
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
                          const YellowFavoriteIcon()
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
        ),
      ),
    );
  }
}
