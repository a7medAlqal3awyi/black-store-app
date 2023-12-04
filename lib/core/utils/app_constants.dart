import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_black_store/core/styles/app_styles.dart';

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
  static String usDollor = "دولار أمريكي / USD";
  static String dontHaveAnAccount = "لا تمتلك حساب؟  ";
  static String bankPrice = "سعر البنك";
  static String lastUpdate = "آخر تحديث";
  static String from15Min = "منذ 15 دقيقة";
  static String blackStore = "السوق السوداء";
  static String khamsen = "50 ج.م";
  static String forty = "40 ج.م";
  static String createAnAccount = " إنشاء حساب";
  static String calcGoldCast = " حساب مصنعية الذهب ";
  static String totalPayed = " إجمالي المبلغ المدفوع  ";
  static String totalWeightByGM = " إجمالي الوزن بالجرام  ";
  static String avgPrice = " متوسط السعر";
  static String eyar = " العيار";
  static String btc = "BTC";
  static String goldEra = "GoldEra";
  static String selema = "Selema";
  static String buy = " شراء";
  static String oneGM = "1 جرام";
  static String twioGM = "5 جرام";
  static String tenGM = "10 جرام";
  static String twinyGM = "20 جرام";
  static String thirtyGM = "30 جرام";
  static String fiftyGM = "50 جرام";
  static String sell = " بيع";
  static String bankMasr = " بنك مصر";
  static String completeWithGoogle = " اكمل باستخدام جوجل";
  static String emailValidation = " يجب ادخل البريد الالكروني ";
  static String passwordValidation = " يجب ادخل كلمة المرور ";
  static String createNewAccount = " إنشاء حساب جديد ";
  static String createNewPassword = " إنشاء كلمة المرور الجديدة ";
  static String fullName = " الاسم بالكامل ";
  static String follow = " متابعة ";
  static String theMain = " الرئيسية ";
  static String money = " العملات ";
  static String gold = " الذهب ";
  static String favourite = " المفضلة ";
  static String profile = " البروفيل ";
  static String wellcome = " مرحباً ";
  static String myName = " احمد القلعاوي ";
  static String blackMarket = " Black Market ";
  static String bkamFeBlackStore = " بكام في السوق السوداء؟! ";
  static String enterFullName = " أدخل الاسم بالكامل ";
  static String verifyPassword = " تأكيد كلمة المرور ";
  static String bullion = " السبائك ";
  static String currency = " العملات ";
  static String gold24 = " ذهب عيار 24 ";
  static String myEmail = "a7medalqalawyi@gmail.com";
  static String enterSentCode = " قم بإدخال الكود المرسل";
  static String doYouSureToLogOut = "هل انت متأكد من تسجيل الخروج";
  static String donotRecieveCode = "لم تتلق الرمز . ";
  static String weSentCodeVerificationTo = "لقد قمنا بإرسال رمز التأكيد الى";
  static String successCreatingNewPassword = "تم إنشاء كلمة مرور جديدة بنجاح";
  static String editProfile = "تعديل الملف الشخصي";
  static String choiceMainCurrency = "حدد العملة الأساسية";
  static String egyptionPound = "جنيه مصري / EGP";
  static String shareApp = "مشاركة التطبيق";
  static String aboutApp = "عن التطبيق";
  static String mainCurrency = "العملة الاساسية";
  static String setting = "الاعدادات";
  static String notifcationSetting = "اعدادات الاشعارات";
  static String edit = "تعديل";
  static String logOut = "تسجيل الخروج";
  static String langauge = "اللغة";
  static String changephoto = "تغيير الصورة";
  static String deleteAccount = "حذف الحساب";
  static String changepassword = "تغيير كلمه المرور";
  static String preferredArrangementOfBanks = "الترتيب المفضل للبنوك";
  static String rankingListOfBanks = "قائمة ترتيب للبنوك";
  static String preferredArrangementOfCurrency = "الترتيب المفضل للعملات";
  static String choosePreferredArrangementOfCurrency = "إختر الترتيب المفضل للعملات";
  static String pressLongToChangeBankArrangement = "إضغط مطولاً علي أي بنك لتغيير ترتيبه.  يمكنك تعديل هذة القائمة لاحقاً.";
  static String resend = "إعادة الإرسال (42 ثانية)";
  static String otpMessage =
      " سنرسل رمز OTP إلى بريدك الإلكتروني للأمان عند نسيان كلمة المرور الخاصة بك ";

  static TextStyle titleStyle = TextStyle(
    fontSize: 14.sp,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
  );

  // hint text
  static TextStyle smallStyle = TextStyle(
    fontSize: 12.sp,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
  );

// Mid text
  static TextStyle medFontStyle = TextStyle(
    fontSize: 12.sp,
    fontFamily: fontFamily,
    color: Colors.white,
    fontWeight: FontWeight.w700,
  );

  // App Bar style
  static TextStyle bigTextStyle = TextStyle(
    fontSize: 18.sp,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
  );
  // selected Text Style in bottom navigation bar
  static TextStyle selectedTextStyle  =   TextStyle(
    color: primary,
    fontSize: 12.sp,
    fontFamily: fontFamily,
    height: 2,
    fontWeight: FontWeight.w700,
  );
  // Unselected Text Style in bottom navigation bar
  static TextStyle unSelectedTextStyle  =   TextStyle(
    color: Colors.white.withOpacity(0.5),
    fontSize: 12.sp,
    fontFamily: fontFamily,
    height: 2,
    fontWeight: FontWeight.w700,
  );
}
