import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_black_store/core/utils/routes.dart';
import 'package:the_black_store/presentation/cubit/app_cubit/app_cubit.dart';
import 'package:the_black_store/presentation/cubit/app_cubit/app_state.dart';

import '../../../core/styles/app_styles.dart';
import '../../../core/utils/app_constants.dart';
import '../../widgets/leading_app_bar.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen>
    with SingleTickerProviderStateMixin
    implements TickerProvider {
  @override
  Ticker createTicker(TickerCallback onTick) => Ticker(onTick);

  @override
  Widget build(BuildContext context) {
    TabController tapController = TabController(length: 2, vsync: this);

    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          var cubit =AppCubit.get(context);
          return Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              leading: LeadingAppBar(
                onTap: () {
                  context.pop(context);
                },
              ),
              backgroundColor: Colors.black,
              centerTitle: true,
              title: Text(
                AppConstants.theNotifications,
                textAlign: TextAlign.center,
                style: AppConstants.bigTextStyle,
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.w),
                        color: AppStyles.bg,
                      ),
                      clipBehavior: Clip.none,
                      child: TabBar(
                        indicatorSize: TabBarIndicatorSize.tab,
                        dividerColor: Colors.transparent,
                        unselectedLabelColor: Colors.white,
                        indicatorColor: primary,
                        labelColor: Colors.black,
                        indicatorPadding: EdgeInsets.all(10.w),
                        labelPadding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 10),
                        labelStyle: TextStyle(
                          fontFamily: fontFamily,
                          fontWeight: FontWeight.w700,
                          fontSize: 13.sp,
                        ),
                        indicator: BoxDecoration(
                          color: primary,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10.w),
                        ),
                        physics: const BouncingScrollPhysics(),
                        splashBorderRadius: BorderRadius.circular(16.w),
                        controller: tapController,
                        tabs: [
                          Tab(
                            text: AppConstants.theNotifications,
                          ),
                          Tab(
                            text: AppConstants.theArticles,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  SizedBox(
                    height: context.deviceHeight,
                    child: TabBarView(controller: tapController, children: [
                      ListView.separated(
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          width: 70.w,
                                          height: 70.h,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                              image: const DecorationImage(
                                                image: AssetImage(
                                                  "assets/images/ahmed_suit.jpg",
                                                ),
                                              )),
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 2,
                                                style: AppConstants.smallStyle
                                                    .copyWith(
                                                  fontSize: 16.sp,
                                                ),
                                                "البنك المركزي: ضوابط جديدة لاستخدام البطاقات الائتمانية للمسافرين إلى الخارج"),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                const Icon(
                                                  Icons.access_time_outlined,
                                                  size: 20,
                                                  color: Colors.blueAccent,
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 6.h),
                                                  child: Text(
                                                    textAlign: TextAlign.start,
                                                    " 17:07:17",
                                                    style: AppConstants
                                                        .selectedTextStyle
                                                        .copyWith(
                                                      color: Colors.blueAccent,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              "البنك المركزي: ضوابط جديدة لاستخدام البطاقات الائتمانية للمسافرين إلى الخارج",
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontFamily: fontFamily,
                                                  fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                          separatorBuilder: (context, index) => Container(
                                height: 5.h,
                                color: Colors.grey,
                              ),
                          itemCount: 10),
                      Container(),
                    ]),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
