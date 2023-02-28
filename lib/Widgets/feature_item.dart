import 'package:flutter/material.dart';
import '../theme/color.dart';
import '../widgets/custom_image.dart';

import 'favorite_box.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({Key? key, required this.data, this.onTap})
      : super(key: key);
  final data;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: shadowColor.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomImage(
              data["image"],
              width: 60,
              height: 60,
              radius: 10,
            ),
            SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(data["name"],
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w600)),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star_rounded,
                        size: 15,
                        color: primaryColor,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text(data["rate"] + " --- " + data["description"],
                          style: TextStyle(fontSize: 16, color: primaryColor)),
                    ],
                  )
                ],
              ),
            ),
            Column(
              children: <Widget>[
                // Text(data["price"],
                //     maxLines: 1,
                //     overflow: TextOverflow.ellipsis,
                //     style: TextStyle(
                //         fontSize: 14,
                //         fontWeight: FontWeight.w500,
                //         color: primaryColor)),
                // SizedBox(
                //   height: 10,
                // ),
                FavoriteBox(
                  iconSize: 13,
                  isFavorited: data["is_favorited"],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
