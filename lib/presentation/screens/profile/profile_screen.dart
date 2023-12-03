import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/styles/app_styles.dart';
import '../../../core/utils/app_constants.dart';
import '../../widgets/custom_profile_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          AppConstants.profile,
          style: AppConstants.BigTextStyle,
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 82.w,
                height: 82.h,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: primary),
                child: Center(
                    child: Text(
                  "ا",
                  style: TextStyle(
                      fontFamily: fontFamily,
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w800),
                )),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                AppConstants.myName,
                style: AppConstants.BigTextStyle,
              ),
              SizedBox(
                height: 100.h,
              ),
              WidgetOfIconTextIcon(
                txt: AppConstants.editProfile,
                iconPath: "assets/icons/Profile.svg",
              ),
              WidgetOfIconTextIcon(
                txt: AppConstants.shareApp,
                iconPath: "assets/icons/shareApp.svg",
              ),
              WidgetOfIconTextIcon(
                txt: AppConstants.aboutApp,
                iconPath: "assets/icons/infocircle.svg",
              ),
              WidgetOfIconTextIcon(
                txt: AppConstants.mainCurrency,
                iconPath: "assets/icons/dollarWhite.svg",
              ),
              WidgetOfIconTextIcon(
                txt: AppConstants.setting,
                iconPath: "assets/icons/setting.svg",
              ),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    clipBehavior: Clip.antiAlias,
                      context: context,
                      builder: (BuildContext context) {
                        return const BottomSheet();
                      },
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50.0),
                          topRight: Radius.circular(50.0),
                        ),
                      )
                  );
                },
                child: SizedBox(
                  height: 48.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/icons/logout.svg"),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        AppConstants.logOut,
                        style: TextStyle(
                            fontFamily: fontFamily,
                            fontWeight: FontWeight.w700,
                            color: AppStyles.redColor,
                            fontSize: 14.sp),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BottomSheet extends StatelessWidget {
  const BottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375.w,
      height: 374.h,
      decoration: BoxDecoration(
          color: AppStyles.bg,
          borderRadius: const BorderRadius.vertical(
            top: Radius.elliptical(170, 0),
          )),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20.h),
            child: Container(
              width: 36.w,
              height: 5.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.w),
                  color: const Color(0xFF7D848D)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  width: 32.w,
                  height: 32.h,
                  decoration: BoxDecoration(
                    color: AppStyles.redColor,
                    shape: BoxShape.rectangle,
                    borderRadius:
                        BorderRadius.circular(12.8.w),
                  ),
                  child: SvgPicture.asset(
                      "assets/icons/CloseSquare.svg")),
            ),
          ),
          Text(
            AppConstants.doYouSureToLogOut,
            style: AppConstants.BigTextStyle,
          ),
          SvgPicture.asset("assets/icons/BigInfo.svg"),
          Container(
            width: 327,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  strokeAlign: BorderSide.strokeAlignCenter,
                  color: Colors.white
                      .withOpacity(0.20000000298023224),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            width: 180.w,
            height: 52.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14.w),
                color: AppStyles.redColor),
            child: Center(
              child: Text(
                AppConstants.logOut,
                style: AppConstants.BigTextStyle,
              ),
            ),
          )
        ],
      ),
    );
  }
}
