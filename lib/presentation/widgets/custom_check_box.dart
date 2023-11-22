import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_black_store/core/styles/app_styles.dart';
import 'package:the_black_store/core/utils/app_constants.dart';
import 'package:the_black_store/core/utils/routes.dart';

import '../screens/recover_password_screen.dart';

class CustomCheckBox extends StatefulWidget {
  final String title;

  const CustomCheckBox({Key? key, required this.title,}) : super(key: key,);

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool? check = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: check,
          focusColor: Colors.white,
          checkColor: Colors.black,
          activeColor: primary,
          onChanged: (bool? value) {
            setState(() {
              check = value;
            });
          },
          shape: const CircleBorder(),
        ),
        Text(
          widget.title,
          style: TextStyle(
              fontFamily: fontFamily,
              fontWeight: FontWeight.w700,
              fontSize: 14.sp),
        ),
        const Spacer(),
        GestureDetector(
          onTap: (){
            context.push(const RecoverPasswordScreen());
          },
          child: Text(
            AppConstants.doYouForgetPassword,
            style: TextStyle(
                fontFamily: fontFamily,
                fontWeight: FontWeight.w700,
                color: AppStyles.lighyYellow,
                fontSize: 12.sp),
          ),
        ),

      ],
    );
  }
}
