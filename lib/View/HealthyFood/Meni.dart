import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:novo/View/HealthyFood/trending.dart';
import '../../Theme/Color.dart';
import '../../Widgets/category_item.dart';
import '../../Widgets/custom_textbox.dart';
import '../../Widgets/popular_item.dart';
import '../../Widgets/slide_item.dart';
import '../../utils/data.dart';
import 'Detali.dart';

String image =
    'https://sezahrana.mk/wp-content/uploads/2017/09/cezar-salata.jpg';

class MeniView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return LayoutBuilder(
      builder: (context, constraint) {
        double height = constraint.biggest.height;
        double width = constraint.biggest.width;
        return ListView.separated(
          key: PageStorageKey("list_data"),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Detali(
                      index: index,
                      image: image,
                      title: "Цезар салата",
                    ),
                  ),
                );
              },
              child: ResturantListItem(
                width: width,
                height: height,
                index: index,
              ),
            );
          },
          separatorBuilder: (context, index) {
            return Container();
          },
          itemCount: 1,
        );
      },
    );
  }
}

class TextSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            child: listPopulars(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            bottom: 20,
          ),
        ),
      ],
    );
  }

  listPopulars() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(left: 15),
      child: Row(
        children: List.generate(
            populars.length, (index) => PopularItem(data: populars[index])),
      ),
    );
  }
}

class ResturantListItem extends StatelessWidget {
  final double height;
  final double width;
  final int index;
  ResturantListItem(
      {required this.width, required this.height, required this.index});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.0),
      // height: height / 3,
      child: Column(
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              child: CustomTextBox(
                  hint: "Пребарај",
                  prefix: Icon(Icons.search, color: darker),
                  suffix:
                      Icon(Icons.filter_list_outlined, color: primaryColor))),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.only(left: 0),
            child: listCategories(),
          ),
          SizedBox(
            height: 10,
          ),
          buildRestaurantRow('Актулени рецепти', context),
          SizedBox(height: 10.0),
          buildRestaurantList(context),
          TextSection(),
        ],
      ),
    );
  }

  buildRestaurantRow(String restaurant, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          "$restaurant",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w800,
          ),
        ),
        TextButton(
          child: Text(
            "Види повеќе",
            style: TextStyle(
              color: primaryColor,
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return Trending();
                },
              ),
            );
          },
        ),
      ],
    );
  }

  buildRestaurantList(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2.4,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        primary: false,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: restaurants == null ? 0 : restaurants.length,
        itemBuilder: (BuildContext context, int index) {
          Map restaurant = restaurants[index];

          return Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: SlideItem(
              img: restaurant["img"],
              title: restaurant["title"],
              rating: restaurant["rating"],
            ),
          );
        },
      ),
    );
  }

  listCategories() {
    List<Widget> lists = List.generate(
        categories.length, (index) => CategoryItem(data: categories[index]));
    lists.insert(
        0,
        CategoryItem(
          data: {
            "name": "Сите",
            "icon": FontAwesomeIcons.th,
          },
          seleted: true,
        ));
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(bottom: 5, left: 15),
      child: Row(children: lists),
    );
  }
}
