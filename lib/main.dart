import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_black_store/core/network/local/shared_pref.dart';
import 'package:the_black_store/core/network/remote/dio_helper.dart';
import 'package:the_black_store/presentation/screens/splash_screen.dart';

import 'core/utils/bloc_observer.dart';

void main() async{
  DioHelper.init();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
  await CacheHelper.init();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
              title: 'Black Store',
              theme: ThemeData(
                   ),
              darkTheme: ThemeData.dark(
                  useMaterial3: false,
              ),
              themeMode: ThemeMode.dark,
              debugShowCheckedModeBanner: false,
              locale: const Locale('ar'),
              localizationsDelegates: const [
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: const [
                Locale('ar'),
                Locale('en'),
              ],
              home:
              const SplashScreen());
        });
  }
}
