
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

String fontFamily = "Almarai";

class AppConstants {
  static String loginToYourAccount = "تسجيل الدخول الى حسابك";
  static String login = "تسجيل الدخول";
  static String next = "التالي";
  static String email = "البريد الإلكتروني";
  static String enterEmail = "أدخل البريد الإلكتروني";
  static String enterPassword = "أدخل  كود المرور";
  static String password = "كلمة المرور";
  static String rememberMe = "تذكرني";
  static String or = "أو";
  static String doYouForgetPassword = "هل نسيت كلمة المرور ؟";
  static String dontHaveAnAccount = "لا تمتلك حساب؟  ";
  static String createAnAccount = " إنشاء حساب";
  static String completeWithGoogle = " اكمل باستخدام جوجل";
  static String emailValidation =" يجب ادخل البريد الالكروني ";
  static String passwordValidation  =" يجب ادخل كلمة المرور ";
  static String createNewAccount  =" إنشاء حساب جديد ";
  static String fullName  =" الاسم بالكامل ";
  static String enterFullName  =" أدخل الاسم بالكامل ";
  static String verifyPassword  =" تأكيد كلمة المرور ";


  static  TextStyle titleStyle = TextStyle(
    fontSize: 14.sp,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
  );
  static  TextStyle hintStyle = TextStyle(
    fontSize: 12.sp,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
  );
  static  TextStyle appBarTextStyle = TextStyle(

    fontSize: 18.sp,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,

  );
}
