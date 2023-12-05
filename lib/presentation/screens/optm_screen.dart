import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_black_store/core/utils/routes.dart';
import 'package:the_black_store/presentation/screens/new_password_screen.dart';

import '../../core/styles/app_styles.dart';
import '../../core/utils/app_constants.dart';
import '../widgets/leading_app_bar.dart';
import '../widgets/buttons/my_button.dart';
import '../widgets/otp_item.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: LeadingAppBar(
          onTap: () {
            context.pop(context);
          },
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          AppConstants.createNewAccount,
          textAlign: TextAlign.center,
          style: AppConstants.bigTextStyle,
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              children: [
                SizedBox(
                  height: 40.h,
                ),
                Text(
                  AppConstants.enterSentCode,
                  style: AppConstants.bigTextStyle,
                ),
                Text(
                  AppConstants.weSentCodeVerificationTo,
                  style: AppConstants.smallStyle,
                ),
                Text(
                  AppConstants.myEmail,
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: fontFamily,
                      fontWeight: FontWeight.w400,
                      color: primary),
                ),
                const OTPItem(),
                RichText(
                  text: TextSpan(
                 text: AppConstants.donotRecieveCode,
                  style: AppConstants.titleStyle,
                    children:[
                      TextSpan(
                        text:AppConstants.resend,
                        style: TextStyle(
                          fontFamily: fontFamily,
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: primary
                        )
                      )
                    ]
                ),

                ),
                SizedBox(height: context.deviceHeight/2.5,),
                ButtonWithOnlyText(
                  color: primary,
                  text: AppConstants.follow,
                  textColor: Colors.black,
                  onTap: () {
                    context.push(const NewPasswordScreen());
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
