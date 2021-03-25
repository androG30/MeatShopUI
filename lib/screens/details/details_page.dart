import 'package:flutter/material.dart';
import 'package:meatshop_app/data/Items.dart';
import 'package:meatshop_app/screens/details/component/Body.dart';

import '../../util.dart';

class DetailsScreen extends StatelessWidget {
  final Items item;

  const DetailsScreen({Key key, this.item}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // each item have a color
      backgroundColor: item.color,
      appBar: buildAppBar(context),
      body: Body(item: item),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: item.color,
      elevation: 0,
      leading: IconButton(
        icon: Image.asset(
          'assets/icons/back.png',
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          icon: Image.asset("assets/icons/search.png"),
          onPressed: () {},
        ),
        IconButton(
          icon: Image.asset("assets/icons/cart.png"),
          onPressed: () {},
        ),
        SizedBox(width: paddingd / 2)
      ],
    );
  }
}