import 'package:flutter/material.dart';

import '../../Theme/Color.dart';
import '../../Widgets/custom_raised_button.dart';

class PodgotovkaView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
                padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 10.0),
                height: 300.0,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            "1.  Испржете го пилешкото месо исечено на парчиња\n2.  Исечете ја марулата на ленти\n3.  Врз марулата додадете сос, пилешкото месо и кубетите.\n4.  Ставете парчиња кашкавал и балсамико крема по вкус.  \n5.  Послужете",
                            style: TextStyle(fontSize: 18.0),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
            ],
          ),
          GestureDetector(
            onTap: () {
              // Navigator.push(
              //   context,
              //   // MaterialPageRoute(builder: (BuildContext context) {
              //   //   return ResturantDetail();
              //   // }),
              // );
            },
            child: CustomRaisedButton(buttonText: 'Започни со подготовка'),
          ),
        ],
      ),
    );
  }
}
