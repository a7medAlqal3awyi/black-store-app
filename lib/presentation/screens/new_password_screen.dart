import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:the_black_store/core/utils/routes.dart';

import '../../core/styles/app_styles.dart';
import '../../core/utils/app_constants.dart';
import '../widgets/input_field.dart';
import '../widgets/leading_app_bar.dart';
import '../widgets/my_button.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController verifyPasswordController =
    TextEditingController();

    final TextEditingController passwordController = TextEditingController();

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
          AppConstants.createNewPassword,
          textAlign: TextAlign.center,
          style: AppConstants.BigTextStyle,
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.all(16.w),
        child: Column(
          children: [
            MyInputFiled(
              obscureText: true,
              type: TextInputType.visiblePassword,
              controller: passwordController,
              title: AppConstants.password,
              hint: AppConstants.enterPassword,
              widget: SvgPicture.asset("assets/icons/Lock.svg"),
            ),
            MyInputFiled(
              obscureText: true,
              type: TextInputType.visiblePassword,
              controller: verifyPasswordController,
              title: AppConstants.verifyPassword,
              hint: AppConstants.enterPassword,
              widget: SvgPicture.asset("assets/icons/Lock.svg"),
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
    );
  }
}
