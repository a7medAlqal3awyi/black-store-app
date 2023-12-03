import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/styles/app_styles.dart';
import '../../core/utils/app_constants.dart';

class InputFiledOfEditScreen extends StatelessWidget {
  const InputFiledOfEditScreen(
      {super.key,
      required this.title,
      required this.hint,
      required this.iconPath});

  final String title;
  final String hint;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppConstants.titleStyle
                .copyWith(color: const Color(0xFF78828A)),
          ),
          SizedBox(
            height: 12.h,
          ),
          SizedBox(
            height: 52.h,
            child: TextFormField(
              keyboardType: TextInputType.text,
              onTapOutside: (event) {
                FocusManager.instance.primaryFocus?.unfocus();
              },
              autofocus: false,
              cursorColor: Colors.grey[100],
              decoration: InputDecoration(
                hintText: hint,
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SvgPicture.asset(
                      iconPath),
                ),
                hintStyle:
                    AppConstants.smallStyle.copyWith(color: Colors.white),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11.w),
                  borderSide: BorderSide(
                    color: primary,
                    width: 1,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11.w),
                  borderSide: BorderSide(
                    color: primary,
                    width: 1,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
