import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:the_black_store/core/utils/routes.dart';
import 'package:the_black_store/presentation/screens/dash_board.dart';

import '../../core/styles/app_styles.dart';
import '../../core/utils/app_constants.dart';
import '../widgets/buttons/my_button.dart';
import '../widgets/input_field.dart';
import '../widgets/leading_app_bar.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: LeadingAppBar(
          onTap: () {
            context.pop(context);
          },
        ),
        title: Text(
          AppConstants.changepassword,
          style: AppConstants.bigTextStyle,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(24.w),
        child: Column(
          children: [
            MyInputFiled(
              obscureText: true,
              type: TextInputType.visiblePassword,
              controller: passwordController,
              title: AppConstants.currentPassword,
              hint: AppConstants.enterPassword,
              widget: SvgPicture.asset("assets/icons/Lock.svg"),
            ),
            MyInputFiled(
              obscureText: true,
              type: TextInputType.visiblePassword,
              controller: passwordController,
              title: AppConstants.newPassword,
              hint: AppConstants.enterPassword,
              widget: SvgPicture.asset("assets/icons/Lock.svg"),
            ),
            MyInputFiled(
              obscureText: true,
              type: TextInputType.visiblePassword,
              controller: passwordController,
              title: AppConstants.verifiyNewPassword,
              hint: AppConstants.enterPassword,
              widget: SvgPicture.asset("assets/icons/Lock.svg"),
            ),
            SizedBox(
              height: context.deviceHeight / 4.5,
            ),
            ButtonWithOnlyText(
              color: primary,
              text: AppConstants.change,
              textColor: Colors.black,
              onTap: () {
                showModalBottomSheet(
                  clipBehavior: Clip.antiAlias,
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      color: Colors.black,
                      width: 375.w,
                      height: 424.h,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20.h,
                          ),
                          Image.asset("assets/images/done.png"),
                          SizedBox(
                            height: 40.h,
                          ),
                          Text(
                            AppConstants.changepasswordSuccess,
                            style: AppConstants.bigTextStyle
                                .copyWith(fontSize: 22.sp, color: primary),
                          ),
                          SizedBox(
                            height: 60.h,
                          ),
                          ButtonWithOnlyText(
                              onTap: () {
                                context.pushAndRemove(const DashBoardScreen());
                              },
                              color: primary,
                              text: AppConstants.main,
                              textColor: Colors.black)
                        ],
                      ),
                    );
                  },
                  // shape: const RoundedRectangleBorder(
                  //   borderRadius: BorderRadius.only(
                  //     topLeft: Radius.circular(50.0),
                  //     topRight: Radius.circular(50.0),
                  //   ),
                  // )
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
