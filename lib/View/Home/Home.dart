import 'package:flutter/material.dart';
import '../../Widgets/CustomButton.dart';
import '../Login/Login.dart';
import '../Signup/Signup.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.pink[300],
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 50.0,
          ),
          Text(
            ("Healthy Food"),
            style: TextStyle(
                fontSize: 45.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 233, 148, 176)),
          ),
          SizedBox(
            height: 40.0,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(200.0),
            child: Image.asset(
              "pictures/images/naslovna.jpg",
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 15.0,
                ),
                CustomButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Signup()));
                  },
                  text: "Регистрирај се",
                  color: Colors.pink,
                  width: 300.0,
                ),
                SizedBox(
                  height: 15.0,
                ),
                CustomButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                  text: "Најави се",
                  color: Colors.pink,
                  width: 300.0,
                ),
                SizedBox(
                  height: 50.0,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
