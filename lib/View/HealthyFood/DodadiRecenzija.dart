import 'package:flutter/material.dart';
import 'dart:io';
import '../../Widgets/custom_raised_button.dart';

class ImageCapture extends StatefulWidget {
  @override
  _ImageCaptureState createState() => _ImageCaptureState();
}

class _ImageCaptureState extends State<ImageCapture> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Post',
                  style: TextStyle(
                    color: Color.fromRGBO(255, 138, 120, 1),
                  ),
                ),
                SizedBox(height: 10),
                ListView(
                  shrinkWrap: true,
                ),
                Container(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Корисничко име',
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    decoration: InputDecoration(
                      labelText: 'Опис на рецензијата',
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      context;
                    },
                    child: CustomRaisedButton(
                      buttonText: 'Објави',
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
