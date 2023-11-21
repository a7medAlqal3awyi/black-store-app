import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_black_store/core/styles/app_styles.dart';
import 'package:the_black_store/core/utils/app_constants.dart';
import 'package:the_black_store/presentation/widgets/button_with_icon.dart';
import 'package:the_black_store/presentation/widgets/double_text.dart';

import '../widgets/custom_check_box.dart';
import '../widgets/input_field.dart';
import '../widgets/my_button.dart';
import '../widgets/screen_divider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Padding(
            padding: EdgeInsets.all(10.w),
            child: Container(
              width: 40.w,
              height: 40.h,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(16.w),
                  color: AppStyles.bg),
              child: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Form(
            key:formKey,
            child: Padding(
              padding: EdgeInsets.all(16.w),
              child: Column(children: [
                Center(
                  child: SizedBox(
                    width: 252.w,
                    height: 78.h,
                    child: Text(
                      textAlign: TextAlign.center,
                      AppConstants.loginToYourAccount,
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: fontFamily,
                          fontSize: 26.sp),
                    ),
                  ),
                ),
                MyInputFiled(
                  controller: emailController,
                  title: AppConstants.email,
                  hint: AppConstants.enterEmail,
                  widget: SvgPicture.asset("assets/icons/email.svg"),
                ),
                MyInputFiled(
                  controller: passwordController,
                  title: AppConstants.password,
                  hint: AppConstants.enterPassword,
                  widget: SvgPicture.asset("assets/icons/Lock.svg"),
                ),
                CustomCheckBox(
                  title: AppConstants.rememberMe,
                ),
                ButtonWithOnlyText(
                  color: primary,
                  text: AppConstants.login,
                  textColor: Colors.black,
                  onTap: () {},
                ),
                const DoubleText(),
                ScreenDivider(
                  dividerText: AppConstants.or,
                ),
                MyButtonWithIcon(
                    imagePath: 'assets/icons/google.svg',
                    color: AppStyles.bg,
                    text: AppConstants.completeWithGoogle,
                    textColor: Colors.white)
              ]),
            ),
          ),
        ));
  }
}
