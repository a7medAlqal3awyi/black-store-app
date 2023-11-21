import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:the_black_store/core/utils/app_constants.dart';
import 'package:the_black_store/core/utils/routes.dart';

import '../../core/styles/app_styles.dart';
import '../widgets/input_field.dart';
import '../widgets/leading_app_bar.dart';
import '../widgets/my_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController verifyPasswordController =
      TextEditingController();
  final TextEditingController nameController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

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
          style: AppConstants.appBarTextStyle,
        ),
      ),
      body: SingleChildScrollView(

        child: Form(
          key: formKey,
          child: Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              children: [
                MyInputFiled(
                  obscureText: false,
                  type: TextInputType.name,
                  controller: nameController,
                  title: AppConstants.fullName,
                  hint: AppConstants.enterFullName,
                  widget: SvgPicture.asset("assets/icons/Profile.svg"),
                ),
                MyInputFiled(
                  obscureText: false,
                  type: TextInputType.emailAddress,
                  controller: emailController,
                  title: AppConstants.email,
                  hint: AppConstants.enterEmail,
                  widget: SvgPicture.asset("assets/icons/email.svg"),
                ),
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
                SizedBox(
                  height: 70.h,
                ),
                ButtonWithOnlyText(
                  color: primary,
                  text: AppConstants.next,
                  textColor: Colors.black,
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
