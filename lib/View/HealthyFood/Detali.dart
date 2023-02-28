import 'package:flutter/material.dart';
import '../../Theme/Color.dart';
import '../../Theme/CustomTextStyle.dart';
import '../../Widgets/CustomOutlineButton.dart';

import 'Sostojki.dart';
import 'Podgotovka.dart';
import 'Recenzii.dart';

class Detali extends StatefulWidget {
  final int index;
  final String image;
  final String title;

  Detali({required this.index, required this.image, required this.title});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ResturantDetailState();
  }
}

class ResturantDetailState extends State<Detali>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          actions: <Widget>[
            InkResponse(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.only(right: 10.0),
              ),
            )
          ],
        ),
        body: Column(
          children: <Widget>[
            Container(
                height: MediaQuery.of(context).size.height / 3.5,
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                child: Hero(
                  tag: widget.index,
                  child: Image.network(widget.image),
                )),
            CustomOutlineButton(
              onPressed: () {},
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
              textStyle: resturantListButton().copyWith(fontSize: 16.0),
              highlightColor: primaryColor,
              borderColor: primaryColor,
              text: "Време на подготовка: 15мин",
            ),
            Expanded(
              child: DetailTabView(
                tabController: tabController,
              ),
            )
          ],
        ));
  }
}

class DetailTabView extends StatelessWidget {
  final TabController tabController;

  DetailTabView({required this.tabController});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Container(
          child: TabBar(
            indicator: UnderlineTabIndicator(borderSide: BorderSide.none),
            labelStyle: TextStyle(color: primaryColor),
            unselectedLabelColor: greyColor,
            labelColor: primaryColor,
            controller: tabController,
            tabs: <Widget>[
              Tab(
                child: Text(
                  toUpper("Состојки"),
                  style: detailsTabTitle(),
                ),
              ),
              Tab(
                child: Text(
                  toUpper("Подготовка"),
                  style: detailsTabTitle(),
                ),
              ),
              Tab(
                child: Text(
                  toUpper("Рецензии"),
                  style: detailsTabTitle(),
                ),
              )
            ],
          ),
          color: Colors.white,
        ),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: <Widget>[
              SostojkiView(),
              PodgotovkaView(),
              RezenciiView()
            ],
          ),
        )
      ],
    );
  }
}
