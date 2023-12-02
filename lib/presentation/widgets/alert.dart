import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:the_black_store/presentation/widgets/x_icon.dart';

import '../../core/styles/app_styles.dart';
import '../../core/utils/app_constants.dart';
import 'alert_dialog_input.dart';
import 'my_button.dart';

Future showMyAlert(context) {
  return showDialog(
    context: context,
    builder: (ctx) => SizedBox(
      width: 327.w,
      height: 200.h,
      child: AlertDialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12.w))),
        backgroundColor: const Color(0xFF2A2A2A),
        title: const Row(
          children: [
            XIcon(),
          ],
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AlertDialogInput(
              text: AppConstants.totalPayed,
            ),
            Row(
              children: [
                Expanded(
                    child: AlertDialogInput(
                  text: AppConstants.totalWeightByGM,
                )),
                Expanded(
                  child: Container(
                    width: 138,
                    height: 32,
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 0.50, color: Color(0xFF968787)),
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            AppConstants.eyar,
                            style: AppConstants.smallStyle,
                          ),
                          const Spacer(),
                          SvgPicture.asset("assets/icons/ArrowDown.svg")
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            ButtonWithOnlyText(
              color: primary,
              text: AppConstants.calcGoldCast,
              textColor: Colors.black,
            )

          ],
        ),

      ),
    ),
  );
}
