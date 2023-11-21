import 'package:flutter/material.dart';

extension NavigatorHelper on BuildContext {
  void push(Widget widget) {
    Navigator.of(this).push(
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );
  }

  void pop(BuildContext context) {
    Navigator.of(context).pop();
  }

  void pushAndRemove(Widget widget) {
    Navigator.of(this).pushAndRemoveUntil<void>(
      MaterialPageRoute(builder: (context) => widget),
      (route) {
        return false;
      },
    );
  }
}

extension MediaQueryHelper on BuildContext {
  double get deviceHeight => MediaQuery.of(this).size.height;

  double get deviceWidth => MediaQuery.of(this).size.width;
}
