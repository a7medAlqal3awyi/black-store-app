import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/styles/app_styles.dart';
import '../../core/utils/app_constants.dart';


const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: AppStyles.bg,
          child: DropdownButton<String>(
            value: dropdownValue,
            style: AppConstants.medFontStyle,
            underline: Container(
              color: const Color(0xFF4F4F4F),
              height: 2,
            ),
            isExpanded: true,
            borderRadius: BorderRadius.circular(18),
            icon: SvgPicture.asset("assets/icons/whiteArrowDown.svg"),
            onChanged: (String? value) {
              setState(() {
                dropdownValue = value!;
              });
            },
            items: list.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Row(
                  children: [
                    Text(
                      value,
                      style: AppConstants.medFontStyle,
                    ),
                    const Spacer(),
                  ],
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
