import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_black_store/core/styles/app_styles.dart';
import 'package:the_black_store/core/utils/routes.dart';
import 'package:the_black_store/presentation/widgets/buttons/my_button.dart';

import '../../core/utils/app_constants.dart';
import '../widgets/item_of_favorites_bank_or_currency.dart';
import '../widgets/item_of_row_i_icon_and_text.dart';
import '../widgets/leading_app_bar.dart';

class CurrencyArrangementScreen extends StatelessWidget {
  const CurrencyArrangementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: LeadingAppBar(
          onTap: () {
            context.pop(context);
          },
        ),
        title: Text(
          AppConstants.rankingListOfCurrency,
          style: AppConstants.bigTextStyle,
        ),
        centerTitle: true,
      ),
      body: Center(
          child: Padding(
        padding: EdgeInsets.all(8.w),
        child: Column(
          children: [
            ItemOfRowWithiIConAndText(
              text: AppConstants.pressLongToChangeCurrencyArrangement,
            ),
            Padding(
              padding: EdgeInsets.all(8.w),
              child: Row(
                children: [
                  Text(
                    AppConstants.choosePreferredArrangementOfCurrency,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      fontFamily: fontFamily,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 480.h,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ItemOfFavoriteRow(
                    imagePath: "assets/icons/qatarFlag.png",
                    text: AppConstants.ryallQatr,
                  );
                },
                itemCount: 10,
              ),
            ),
            ButtonWithOnlyText(
              color: primary,
              text: AppConstants.saveChanges,
              textColor: Colors.black,
            )
          ],
        ),
      )),
    );
  }
}
