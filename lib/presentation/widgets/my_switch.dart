// ignore_for_file: no_logic_in_create_state

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../../core/utils/app_constants.dart';

class MySwitchWidget extends StatefulWidget {
  const MySwitchWidget({super.key, required this.text});
  final String text;

  @override
  State<MySwitchWidget> createState() => _MySwitchWidgetState(text);
}

class _MySwitchWidgetState extends State<MySwitchWidget> {
  bool status = false;
  final String text;

  _MySwitchWidgetState(this.text);

  @override
  Widget build(BuildContext context) {
    return   Container(
      decoration: BoxDecoration(
        border: BorderDirectional(
            bottom:
            BorderSide(width: 2.w, color: const Color(0xFF323232))),
      ),
      padding:  EdgeInsets.all(12.w),
      child: Row(
        children: [
          Text(
            text,
            style: AppConstants.bigTextStyle.copyWith(fontSize: 16.sp),
          ),
          const Spacer(),
          FlutterSwitch(
              padding: 1,
              height: 31.h,
              width: 51.w,
              borderRadius: 15,
              value: status,
              activeColor: const Color(0xFF32D74B),
              inactiveColor: const Color(0xFF787880),
              onToggle: (val) {
                setState(() {
                  status = val;
                });
              })
        ],
      ),
    );
  }
}
