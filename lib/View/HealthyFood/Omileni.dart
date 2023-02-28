import 'package:flutter/material.dart';

import '../../Theme/Color.dart';
import '../../Widgets/custom_textbox.dart';
import '../../Widgets/feature_item.dart';
import '../../utils/data.dart';

class OmileniView extends StatelessWidget {
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
            height: 20,
          ),
          Container(
            child: listFeatured(),
          ),
        ],
      ),
    );
  }

  listFeatured() {
    return Column(
      children: List.generate(
          featured.length, (index) => FeaturedItem(data: featured[index])),
    );
  }
}
