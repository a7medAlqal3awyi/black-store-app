import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_black_store/core/styles/app_styles.dart';
import 'package:the_black_store/core/utils/app_constants.dart';
import 'package:the_black_store/core/utils/routes.dart';

import '../../widgets/input_field_of_edit_profile.dart';
import '../../widgets/leading_app_bar.dart';
import '../../widgets/my_button.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: LeadingAppBar(
          onTap: () {
            context.pop(context);
          },
        ),
        title: Text(
          AppConstants.editProfile,
          style: AppConstants.BigTextStyle,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: 40.w,
                height: 40.h,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(16.w),
                    color: AppStyles.bg),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SvgPicture.asset("assets/icons/EditSquare.svg"),
                )),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: ListView(
          children: [
            SizedBox(
              height: 10.h,
            ),
            Container(
              width: 110.w,
              height: 110.h,
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Image.asset(
                  "assets/images/ahmed_suit.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              textAlign: TextAlign.center,
              AppConstants.changephoto,
              style: TextStyle(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w700,
                  fontFamily: fontFamily,
                  color: const Color(0xFF43A048)),
            ),
            InputFiledOfEditScreen(
              title: AppConstants.fullName,
              hint: AppConstants.myName,
              iconPath: "assets/icons/yellowProfile.svg",
            ),
            InputFiledOfEditScreen(
              title: AppConstants.email,
              hint: AppConstants.myEmail,
              iconPath: "assets/icons/yellowMessage.svg",
            ),
            SizedBox(
              height: 240.h,
            ),
            ButtonWithOnlyText(
              color: primary,
              text: AppConstants.edit,
              textColor: Colors.black,
            ),

          ],
        ),
      ),
    );
  }
}
