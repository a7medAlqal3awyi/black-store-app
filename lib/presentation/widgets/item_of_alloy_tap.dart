import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:the_black_store/core/styles/app_styles.dart';
import 'package:the_black_store/core/utils/app_constants.dart';
import 'package:the_black_store/core/utils/routes.dart';

class ItemOfLollyTap extends StatefulWidget {
  const ItemOfLollyTap({
    super.key,
  });

  @override
  State<ItemOfLollyTap> createState() => _ItemOfLollyTapState();
}

class _ItemOfLollyTapState extends State<ItemOfLollyTap> {
  @override
  Widget build(BuildContext context) {
    List<String> titles = [
      AppConstants.btc,
      AppConstants.goldEra,
      AppConstants.goldEra,
      AppConstants.selema,
      AppConstants.selema,
    ];
    List<String> gramsList = [
      AppConstants.oneGM,
      AppConstants.twioGM,
      AppConstants.tenGM,
      AppConstants.twinyGM,
      AppConstants.thirtyGM,
      AppConstants.fiftyGM,
    ];
    List<String> brandsImages = [
      "assets/icons/btc.png",
      "assets/icons/goldBrand.png",
      "assets/icons/goldBrand.png",
      "assets/icons/schemaBrand.png",
      "assets/icons/schemaBrand.png",
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 84.h,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 15.h,
                          width: 56.w,
                          child: Text(
                            titles[index],
                            textAlign: TextAlign.center,
                            style: AppConstants.medFontStyle,
                          ),
                        ),
                      )
                    ],
                  );
                },
                itemCount: 5,
                scrollDirection: Axis.horizontal,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: SizedBox(
                height: context.deviceHeight,
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10.h,
                      ),
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
                              gramsList[index],
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
