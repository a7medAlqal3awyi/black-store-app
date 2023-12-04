import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_black_store/core/styles/app_styles.dart';
import 'package:the_black_store/core/utils/app_constants.dart';
import 'package:the_black_store/core/utils/routes.dart';
import 'package:the_black_store/presentation/widgets/leading_app_bar.dart';

class MainCurrencyScreen extends StatefulWidget {
  const MainCurrencyScreen({super.key});

  @override
  State<MainCurrencyScreen> createState() => _MainCurrencyScreenState();
}

class _MainCurrencyScreenState extends State<MainCurrencyScreen> {
  int selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading:  LeadingAppBar(
          onTap: (){
            context.pop(context);
          },
        ),
        title: Text(
          AppConstants.mainCurrency,
          style: AppConstants.bigTextStyle,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  AppConstants.choiceMainCurrency,
                  style: AppConstants.bigTextStyle,
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              height: context.deviceHeight.h / 2,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
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
                              AppConstants.egyptionPound,
                              style: AppConstants.titleStyle,
                            ),
                            const Spacer(),
                            Radio<int>(
                              activeColor: primary,
                              value: index,
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
                  );
                },
                itemCount: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
