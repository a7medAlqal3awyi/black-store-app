import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_black_store/core/utils/routes.dart';
import 'package:the_black_store/presentation/widgets/custom_profile_widget.dart';

import '../../../core/utils/app_constants.dart';
import '../../widgets/custom_txt_button.dart';
import '../../widgets/leading_app_bar.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
          AppConstants.setting,
          style: AppConstants.bigTextStyle,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 40.h,
            ),
            WidgetOfIconTextIcon(
                iconPath: "assets/icons/WhiteLock.svg",
                txt: AppConstants.changepassword,
                onTap: () {}),
            WidgetOfIconTextIcon(
                iconPath: "assets/icons/bankIcon.svg",
                txt: AppConstants.preferredArrangementOfBanks,
                onTap: () {}),
            WidgetOfIconTextIcon(
                iconPath: "assets/icons/dollarWhite.svg",
                txt: AppConstants.preferredArrangementOfCurrency,
                onTap: () {}),
            WidgetOfIconTextIcon(
                iconPath: "assets/icons/global.svg",
                txt: AppConstants.langauge,
                onTap: () {}),
            WidgetOfIconTextIcon(
                iconPath: "assets/icons/notificationbing.svg",
                txt: AppConstants.notifcationSetting,
                onTap: () {}),
            SizedBox(height: 20.h,),
            CustomTextAndIconButton(
              iconPath: "assets/icons/trash.svg",
              txt: AppConstants.deleteAccount,
              onTap: () {

              },
            ),
          ],
        ),
      ),
    );
  }
}
