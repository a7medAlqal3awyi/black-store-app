import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:the_black_store/core/styles/app_styles.dart';
import 'package:the_black_store/core/utils/app_constants.dart';
import 'package:the_black_store/core/utils/routes.dart';

import 'item_alloy_circle.dart';

class ItemOfLollyTap extends StatelessWidget {
  const ItemOfLollyTap({
    super.key,
  });

  // final String weight;
  @override
  Widget build(BuildContext context) {
    List<String> title = [
      AppConstants.btc,
      AppConstants.goldEra,
      AppConstants.goldEra,
      AppConstants.selema,
      AppConstants.selema,
    ];
    List<String> brandsImages = [
      "assets/icons/btc.png",
      "assets/icons/goldBrand.png",
      "assets/icons/goldBrand.png",
      "assets/icons/schemaBrand.png",
      "assets/icons/schemaBrand.png",
    ];

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 70.h,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.w),
                    child: SizedBox(
                      height: 65.h,
                      width: 56.w,
                      child: Column(
                        children: [
                          Container(
                            width: 46.w,
                            height: 46.h,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Image.asset(brandsImages[index]),
                          ),
                          SizedBox(height: 6.h),
                          Text(
                            title[index],
                            textAlign: TextAlign.center,
                            style: AppConstants.medFontStyle,
                          )
                        ],
                      ),
                    ),
                  );
                },
                itemCount: 5,
                scrollDirection: Axis.horizontal,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              height: context.deviceHeight,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 18.h, horizontal: 24.w),
                    child: Container(
                      width: 327.w,
                      height: 48.h,
                      padding: EdgeInsets.symmetric(
                          vertical: 10.h, horizontal: 22.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.w),
                        color: AppStyles.bg,
                      ),
                      child: Row(
                        children: [
                          Text(
                            AppConstants.oneGM,
                            style: AppConstants.medFontStyle,
                          ),
                          const Spacer(),
                          SvgPicture.asset("assets/icons/whiteArrowDown.svg")
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
