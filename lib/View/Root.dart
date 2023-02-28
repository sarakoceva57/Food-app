import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:novo/Theme/Color.dart';
import '../Widgets/Loader.dart';
import '../Widgets/bottombar_item.dart';
import 'Home/Home.dart';
import 'Welcome/Welcome.dart';

class Root extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RootState();
  }
}

class RootState extends State<Root> {
  Widget launchWidget = LoaderWidget();
  int activeTab = 0;
  List<IconData> tapIcons = [
    Icons.home_rounded,
    Icons.search,
    Icons.video_camera_back,
    Icons.favorite
  ];
  List<Widget> pages = [
    Home(),
    Home(),
    Home(),
    Home(),
  ];
  @override
  void initState() {
    super.initState();
    checkUser();
  }

  checkUser() async {
    try {
      User? user = FirebaseAuth.instance.currentUser;
      print(user);
      if (user != null) {
        setState(() {
          launchWidget = Welcome(
            user: user,
          );
        });
      } else {
        setState(() {
          launchWidget = Home();
        });
      }
    } catch (e) {
      print("ERROR IN LAUNCH $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: appBgColor,
        bottomNavigationBar: getBottomBar(),
        body: launchWidget);
  }

  Widget getBottomBar() {
    return Container(
      height: 75,
      width: double.infinity,
      padding: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
          color: bottomBarColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25)),
          boxShadow: [
            BoxShadow(
                color: shadowColor.withOpacity(0.1),
                blurRadius: .5,
                spreadRadius: .5,
                offset: Offset(0, 1))
          ]),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
              tapIcons.length,
              (index) => BottomBarItem(
                    tapIcons[index],
                    "",
                    isActive: activeTab == index,
                    activeColor: primaryColor,
                    onTap: () {
                      setState(() {
                        activeTab = index;
                      });
                    },
                  ))),
    );
  }
}
