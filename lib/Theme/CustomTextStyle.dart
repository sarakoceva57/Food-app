import 'package:flutter/material.dart';

import 'Color.dart';

String toUpper(String txt) => txt.toUpperCase();

TextStyle resturantListSwitchText(bool active) {
  return TextStyle(
      color: active ? primaryColor : greyColor, fontSize: normalText - 2);
}

TextStyle resturantListButton() {
  return TextStyle(color: primaryColor, fontSize: normalText - 2);
}

TextStyle resturantListTitleText() {
  return TextStyle(
      color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold);
}

TextStyle resturantListSubTitleText() {
  return TextStyle(color: greyColor, fontSize: normalText - 2);
}

TextStyle detailsTabTitle() {
  return TextStyle(fontSize: 14.5, fontWeight: FontWeight.w500);
}
