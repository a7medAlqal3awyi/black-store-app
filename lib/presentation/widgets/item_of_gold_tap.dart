import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_black_store/presentation/widgets/share_icon.dart';

import '../../core/styles/app_styles.dart';
import '../../core/utils/app_constants.dart';
import 'column_of_double_text.dart';
import 'my_small_vertical_divider.dart';

class ItemOfGoldTap extends StatelessWidget {
  const ItemOfGoldTap({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: false,
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
    );
  }
}
