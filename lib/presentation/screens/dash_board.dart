import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_black_store/core/styles/app_styles.dart';
import 'package:the_black_store/core/utils/app_constants.dart';

import '../cubit/app_cubit/app_cubit.dart';
import '../cubit/app_cubit/app_state.dart';
class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          var cubit =AppCubit.get(context);
          return Scaffold(
            backgroundColor: Colors.transparent,
            body: cubit.screens[cubit.currentIndex],
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
                currentIndex: cubit.currentIndex,
                onTap:(index){
                  cubit.changeCurrentIndex(index);
                },
                items: cubit.bottomItems
              ),
            ),
          );
        },
      ),
    );
  }
}
