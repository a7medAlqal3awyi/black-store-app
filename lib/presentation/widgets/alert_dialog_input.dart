import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/utils/app_constants.dart';

class AlertDialogInput extends StatelessWidget {
  const AlertDialogInput({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 8.w),
      child: SizedBox(
        width: 291.w,
        height: 32,
        child: TextFormField(
          keyboardType: TextInputType.number,
          onTapOutside: (event) {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          autofocus: false,
          cursorColor: Colors.grey[100],
          decoration: InputDecoration(
            hintText: text,
            hintStyle: AppConstants.smallStyle,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.w),
              borderSide: const BorderSide(
                color: Color(0xFF968787),
                width: .5,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.w),
              borderSide: const BorderSide(
                color: Color(0xFF968787),
                width: .5,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
