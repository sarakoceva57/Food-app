import 'package:flutter/material.dart';
import '../../Widgets/trending_item.dart';
import '../../utils/data.dart';

class Trending extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Актуелни рецепти"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 0,
          horizontal: 5.0,
        ),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 5.0),
            ListView.builder(
              primary: false,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: restaurants == null ? 0 : restaurants.length,
              itemBuilder: (BuildContext context, int index) {
                Map restaurant = restaurants[index];

                return TrendingItem(
                  img: restaurant["img"],
                  title: restaurant["title"],
                  rating: restaurant["rating"],
                );
              },
            ),
            SizedBox(height: 5.0),
          ],
        ),
      ),
    );
  }
}
