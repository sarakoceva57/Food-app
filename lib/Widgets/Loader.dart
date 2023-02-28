import 'package:flutter/material.dart';

Widget LoaderWidget() {
  return Container(
    child: Center(
        child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(
                Color.fromARGB(255, 185, 61, 108)),
            strokeWidth: 3.0)),
    color: Colors.white54,
  );
}
