import 'package:flutter/material.dart';
import 'package:the_black_store/core/utils/routes.dart';

import '../../core/utils/app_constants.dart';
import '../widgets/leading_app_bar.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
          AppConstants.createNewPassword,
          textAlign: TextAlign.center,
          style: AppConstants.BigTextStyle,
        ),
      ),
    );
  }
}
