import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/styles/app_styles.dart';
class OTPItem extends StatelessWidget {
  const OTPItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 65.w,
              height: 65.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.w),
                color: AppStyles.bg,
              ),

              child: TextFormField(
                onSaved: (pin1){},
                onChanged: (val){
                  if (val.length==1 ){
                    FocusScope.of(context).nextFocus();
                  }
                },
                autofocus: true,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: InputDecoration(
                  focusedBorder: const OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.w),
                      borderSide: BorderSide(
                        strokeAlign: 2,
                        color: primary,

                      )
                  ),
                  border: const OutlineInputBorder(),
                  counterText: "",
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 65.w,
              height: 65.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.w),
                color: AppStyles.bg,
              ),

              child: TextFormField(
                onSaved: (pin2){},
                onChanged: (val){
                  if (val.length==1 ){
                    FocusScope.of(context).nextFocus();
                  }
                },
                autofocus: true,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: InputDecoration(
                  focusedBorder: const OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.w),
                      borderSide: BorderSide(
                        strokeAlign: 2,
                        color: primary,

                      )
                  ),
                  border: const OutlineInputBorder(),
                  counterText: "",
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 65.w,
              height: 65.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.w),
                color: AppStyles.bg,
              ),

              child: TextFormField(
                onSaved: (pin3){},
                onChanged: (val){
                  if (val.length==1 ){
                    FocusScope.of(context).nextFocus();
                  }
                },
                autofocus: true,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: InputDecoration(
                  focusedBorder: const OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.w),
                      borderSide: BorderSide(
                        strokeAlign: 2,
                        color: primary,

                      )
                  ),
                  border: const OutlineInputBorder(),
                  counterText: "",
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 65.w,
              height: 65.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.w),
                color: AppStyles.bg,
              ),

              child: TextFormField(
                onSaved: (pin4){},
                onChanged: (val){
                  if (val.length==1 ){
                    FocusScope.of(context).nextFocus();
                  }
                },
                autofocus: true,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: InputDecoration(
                  focusedBorder: const OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.w),
                      borderSide: BorderSide(
                        strokeAlign: 2,
                        color: primary,

                      )
                  ),
                  border: const OutlineInputBorder(),
                  counterText: "",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
