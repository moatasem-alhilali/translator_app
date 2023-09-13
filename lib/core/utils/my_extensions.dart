import 'package:flutter/material.dart';

import 'colors.dart';
import 'navigator_manager.dart';

//=================================Navigator===============================
extension MyNavigator on BuildContext {
  void push(Widget page) {
    fadeNavigation(page: page, context: this);
  }

  void pop() => Navigator.pop(this);
  void pushAndRemoveUntil(Widget page) {
    fadeNavigationWithRemove(page: page, context: this);
  }
}

//================================= double Helper===============================
extension SizeHelper on BuildContext {
  double getHight(int value) => (MediaQuery.of(this).size.height / 100) * value;
  double getWidth(int value) => (MediaQuery.of(this).size.width / 100) * value;
  double screenWidth() => MediaQuery.of(this).size.width;
  double screenHeight() => MediaQuery.of(this).size.height;
}

//=================================Int Helper===============================
extension ColorHelper on int {
  String getColorName() => defaultColorsMap.keys.toList()[this];
  // String getsize() => defaultColorsMap.keys.toList()[this];
  Color getColorWidget() => defaultColorsMap.values.toList()[this];
}

extension ListHelper on List {
  Color getColorList(int index) =>
      defaultColorsMap.values.toList()[this[index]];
}
