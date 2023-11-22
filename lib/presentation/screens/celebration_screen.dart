import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_black_store/core/styles/app_styles.dart';
import 'package:the_black_store/core/utils/app_constants.dart';

import '../widgets/my_button.dart';
class CelebrationScreen extends StatelessWidget {
  const CelebrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),

            SvgPicture.asset("assets/images/celbrate.svg"),
            Padding(
              padding:  EdgeInsets.all(10.h),
              child: Text(AppConstants.successCreatingNewPassword,style: TextStyle(
                fontFamily: fontFamily,
                fontSize: 22.sp,
                color:primary ,
                fontWeight: FontWeight.w800
              ),),
            ),
            const Spacer(),
            ButtonWithOnlyText(
              color: primary,
              text: AppConstants.theMain,
              textColor: Colors.black,
              onTap: () {
              },
            ),
            const SizedBox(height: 50,)
          ],
        ),
      ),
    );
  }
}
