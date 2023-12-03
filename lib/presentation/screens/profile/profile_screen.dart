import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        child: Column(
          children: [
            Container(
              width: 82.w,
              height: 82.h,
              decoration: BoxDecoration(shape: BoxShape.circle, color: primary),
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
              txt:AppConstants.editProfile ,
              iconPath: "assets/icons/Profile.svg",
            ),
            WidgetOfIconTextIcon(
              txt:AppConstants.shareApp ,
              iconPath: "assets/icons/shareApp.svg",
            ),
            WidgetOfIconTextIcon(
              txt:AppConstants.aboutApp ,
              iconPath: "assets/icons/infocircle.svg",
            ),
            WidgetOfIconTextIcon(
              txt:AppConstants.mainCurrency ,
              iconPath: "assets/icons/dollarWhite.svg",
            ),
            WidgetOfIconTextIcon(
              txt:AppConstants.setting ,
              iconPath: "assets/icons/setting.svg",
            ),

          ],
        ),
      ),
    );
  }
}
