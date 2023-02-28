import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'Theme/Color.dart';
import 'View/Root.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
          fontFamily: "RalewatMedium",
          primaryColor: primaryColor,
          primaryIconTheme: IconThemeData(color: Colors.white),
          primarySwatch: Colors.pink,
          primaryTextTheme: TextTheme(
            headline6: TextStyle(color: Colors.white),
          ),
          floatingActionButtonTheme:
              FloatingActionButtonThemeData(backgroundColor: primaryColor)),
      title: "Healthy Food",
      home: Root(),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{'/root': (context) => Root()},
    );
  }
}
