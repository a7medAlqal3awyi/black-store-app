import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_bar_of_main_sc.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          children: [
            SafeArea(
                child: SizedBox(
              height: 0.h,
            )),
            const AppBarMainScreen()
          ],
        ),
      ),
    );
  }
}
