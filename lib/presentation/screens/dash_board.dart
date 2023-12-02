import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_black_store/core/styles/app_styles.dart';
import 'package:the_black_store/core/utils/app_constants.dart';
import 'package:the_black_store/presentation/screens/favorite/favorite_screen.dart';
import 'package:the_black_store/presentation/screens/main_screen.dart';
import 'package:the_black_store/presentation/screens/profile/profile_screen.dart';

import '../widgets/the_gold_screen.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  int currentIndex = 0;

  List<Widget> screens = const [
    MainScreen(),
    TheGoldScreen(),
    FavoriteScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: screens[currentIndex],
      bottomNavigationBar: Container(

        height: 94.h,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
         color: Colors.transparent,

          borderRadius: BorderRadius.circular(18.w),
        ),
        child: BottomNavigationBar(
          backgroundColor: AppStyles.bg,
          showUnselectedLabels: true,
          enableFeedback: false,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          selectedItemColor: primary,
          unselectedItemColor: Colors.white.withOpacity(0.5),
          selectedLabelStyle: AppConstants.selectedTextStyle,
          unselectedLabelStyle: AppConstants.selectedTextStyle,
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(
                  "assets/icons/bottom_nav_bar/color_dollar.svg"),
              icon:
                  SvgPicture.asset("assets/icons/bottom_nav_bar/dollar.svg"),
              label: AppConstants.currency,
            ),
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(
                  "assets/icons/bottom_nav_bar/color_gold.svg"),
              icon: SvgPicture.asset("assets/icons/bottom_nav_bar/gold.svg"),
              label: AppConstants.gold,
            ),
            BottomNavigationBarItem(
                activeIcon: SvgPicture.asset(
                    "assets/icons/bottom_nav_bar/color_heart.svg"),
                icon:
                    SvgPicture.asset("assets/icons/bottom_nav_bar/heart.svg"),
                label: AppConstants.favourite),
            BottomNavigationBarItem(
                activeIcon: SvgPicture.asset(
                    "assets/icons/bottom_nav_bar/color_profile.svg"),
                icon: SvgPicture.asset(
                    "assets/icons/bottom_nav_bar/profile.svg"),
                label: AppConstants.profile),
          ],
        ),
      ),
    );
  }
}
