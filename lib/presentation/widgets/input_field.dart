import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_black_store/core/styles/app_styles.dart';
import 'package:the_black_store/core/utils/app_constants.dart';

class MyInputFiled extends StatelessWidget {
  const MyInputFiled(
      {super.key,
      required this.title,
      required this.hint,
      this.controller,
      this.widget,
      required this.type,
      required this.obscureText});

  final String title;
  final String hint;
  final TextInputType type;
  final bool obscureText;

  final TextEditingController? controller;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      child: Container(
        margin: EdgeInsets.only(top: 16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: AppConstants.titleStyle,
            ),
            Container(
              height: 52.h,
              margin: EdgeInsets.only(top: 10.h),
              padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 10.h),
              decoration: BoxDecoration(
                  color: AppStyles.bg,
                  border: Border.all(color: AppStyles.bg, width: 1),
                  borderRadius: BorderRadius.circular(11.w)),
              child: Row(
                children: [
                  Expanded(

                    child: TextFormField(
                      obscureText: obscureText,
                      keyboardType: type,
                      onTapOutside: (event) {
                        FocusManager.instance.primaryFocus?.unfocus();
                      },
                      autofocus: false,
                      cursorColor: Colors.grey[100],
                      controller: controller,
                      decoration: InputDecoration(
                        hintText: hint,
                        hintStyle: AppConstants.smallStyle,
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: AppStyles.bg,
                            width: 0,
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: AppStyles.bg,
                            width: 0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  widget == null
                      ? Container()
                      : Container(
                          child: widget,
                        )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
