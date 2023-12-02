import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_black_store/core/utils/app_constants.dart';
import 'package:the_black_store/presentation/widgets/alert.dart';
import 'package:the_black_store/presentation/widgets/the_gold_screen.dart';
class GoldScreen extends StatelessWidget {
  const GoldScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          AppConstants.gold,
          style: AppConstants.BigTextStyle,
        ),
        actions: [
          GestureDetector(
            onTap: () {
              showMyAlert(context);
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.w),
              child: SvgPicture.asset('assets/icons/goldCalc.svg'),
            ),
          ),
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Padding(
            padding: EdgeInsets.all(24.w),
            child: const TheGoldScreen(),
          ),
        ],
      ),
    );
  }
}
