import 'package:flutter/material.dart';
import '../../Theme/Color.dart';
import '../../Widgets/custom_raised_button.dart';

class SostojkiView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.separated(
        key: new PageStorageKey('resturantMenuItem'),
        itemBuilder: (context, index) {
          return Container(
            color: Color.fromARGB(255, 247, 237, 246),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                        child: Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 50.0, horizontal: 10.0),
                      height: 300.0,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  "Сос за цезар салата\nКубети\nКашкавал\nБалзамико крема\nПилешко месо\nМарула",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Text(
                                "100гр\n20гр\n20гр\nпо вкус\n100гр\n10 ливчиња",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    color: primaryColor,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),
                  ],
                ),
                GestureDetector(
                  onTap: () {},
                  child: CustomRaisedButton(buttonText: 'Додади рецензија'),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 5.0,
          );
        },
        itemCount: 1);
  }
}
