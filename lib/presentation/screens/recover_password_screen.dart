import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_black_store/core/styles/app_styles.dart';
import 'package:the_black_store/core/utils/routes.dart';

import '../../core/utils/app_constants.dart';
import '../widgets/input_field.dart';
import '../widgets/leading_app_bar.dart';
import '../widgets/buttons/my_button.dart';
import 'optm_screen.dart';

class RecoverPasswordScreen extends StatelessWidget {
  const RecoverPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
  var emailController = TextEditingController();
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
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 40.h),
                Container(
                  padding: EdgeInsets.all(16.w),
                  width: 327.w,
                  height: 80.h,
                  decoration: BoxDecoration(
                      color: AppStyles.bg,
                      borderRadius: BorderRadius.circular(8.w)),
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/icons/!.svg'),
                      SizedBox(
                        width: 20.w,
                      ),
                      Expanded(
                        child: Text(
                          AppConstants.otpMessage,
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontFamily: fontFamily,
                              fontSize: 12.sp,
                              color: const Color(0xFFFFFAD9)),
                        ),
                      )
                    ],
                  ),
                ),
                MyInputFiled(
                  obscureText: false,
                  type: TextInputType.emailAddress,
                  controller: emailController,
                  title: AppConstants.email,
                  hint: AppConstants.enterEmail,
                  widget: SvgPicture.asset("assets/icons/email.svg"),
                ),
                SizedBox(height: context.deviceHeight/2.5,),
                ButtonWithOnlyText(
                  color: primary,
                  text: AppConstants.follow,
                  textColor: Colors.black,
                  onTap: () {
                    context.push(const OTPScreen());
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
