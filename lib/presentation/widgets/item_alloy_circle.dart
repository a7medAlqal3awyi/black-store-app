import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_black_store/core/utils/app_constants.dart';

// ignore: must_be_immutable
class ItemAlloyCircle extends StatelessWidget {
  ItemAlloyCircle({
    super.key,
    required this.title,
    required this.brandsImages,
  });

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

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 78.h,
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
                    style: AppConstants.medFontStyle,
                  )
                ],
              ),
            ),
          );
        },
        itemCount: 20,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
