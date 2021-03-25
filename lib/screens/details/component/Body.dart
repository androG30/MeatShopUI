import 'package:flutter/material.dart';
import 'package:meatshop_app/data/Items.dart';
import '../../../util.dart';
import 'add_to_cart.dart';
import 'counter_with_fav.dart';
import 'description.dart';
import 'product_title_with_image.dart';

class Body extends StatelessWidget {
  final Items item;

  const Body({Key key, this.item}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // It provide us total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: paddingd,
                    right: paddingd,
                  ),
                  // height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: paddingd / 2),
                      Description(item: item),
                      SizedBox(height: paddingd / 2),
                      CounterWithFavBtn(),
                      SizedBox(height: paddingd / 2),
                      AddToCart(item: item)
                    ],
                  ),
                ),
                ProductTitleWithImage(item: item)
              ],
            ),
          )
        ],
      ),
    );
  }
}