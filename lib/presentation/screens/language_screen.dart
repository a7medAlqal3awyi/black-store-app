import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_black_store/core/styles/app_styles.dart';
import 'package:the_black_store/core/utils/routes.dart';

import '../../core/utils/app_constants.dart';
import '../widgets/leading_app_bar.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  int selectedValue = 0;

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
          AppConstants.langauge,
          style: AppConstants.bigTextStyle,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12.h),
              child: Container(
                width: 327.w,
                height: 58.h,
                decoration: ShapeDecoration(
                  color: AppStyles.bg,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.w),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        AppConstants.arabic,
                        style: AppConstants.titleStyle,
                      ),
                      const Spacer(),
                      Radio<int>(
                        activeColor: primary,
                        value: 0,
                        groupValue: selectedValue,
                        onChanged: (value) {
                          setState(() {
                            selectedValue = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12.h),
              child: Container(
                width: 327.w,
                height: 58.h,
                decoration: ShapeDecoration(
                  color: AppStyles.bg,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.w),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        AppConstants.english,
                        style: AppConstants.titleStyle,
                      ),
                      const Spacer(),
                      Radio<int>(
                        activeColor: primary,
                        value: 1,
                        groupValue: selectedValue,
                        onChanged: (value) {
                          setState(() {
                            selectedValue = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
