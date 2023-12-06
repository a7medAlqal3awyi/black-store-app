import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/utils/app_constants.dart';
import '../screens/favorite/favorite_screen.dart';
import '../screens/main_screen.dart';
import '../screens/profile/profile_screen.dart';
import '../widgets/the_gold_screen.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppStates> {
  static AppCubit get(context) => BlocProvider.of(context);

  AppCubit() : super(InitialState());
  int currentIndex = 0;
  List<Widget> screens = const [
    MainScreen(),
    TheGoldScreen(),
    FavoriteScreen(),
    ProfileScreen()
  ];

  List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(
      activeIcon:
          SvgPicture.asset("assets/icons/bottom_nav_bar/color_dollar.svg"),
      icon: SvgPicture.asset("assets/icons/bottom_nav_bar/dollar.svg"),
      label: AppConstants.currency,
    ),
    BottomNavigationBarItem(
      activeIcon:
          SvgPicture.asset("assets/icons/bottom_nav_bar/color_gold.svg"),
      icon: SvgPicture.asset("assets/icons/bottom_nav_bar/gold.svg"),
      label: AppConstants.gold,
    ),
    BottomNavigationBarItem(
        activeIcon:
            SvgPicture.asset("assets/icons/bottom_nav_bar/color_heart.svg"),
        icon: SvgPicture.asset("assets/icons/bottom_nav_bar/heart.svg"),
        label: AppConstants.favourite),
    BottomNavigationBarItem(
        activeIcon:
            SvgPicture.asset("assets/icons/bottom_nav_bar/color_profile.svg"),
        icon: SvgPicture.asset("assets/icons/bottom_nav_bar/profile.svg"),
        label: AppConstants.profile),
  ];
  void changeCurrentIndex(index){
    currentIndex  = index;
    emit(AppNavBottomState());
  }
}
