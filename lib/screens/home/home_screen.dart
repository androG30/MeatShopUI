import 'package:flutter/material.dart';
import 'package:meatshop_app/util.dart';
import 'elements/Body.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: Image.asset("assets/icons/back.png"),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: Image.asset(
            "assets/icons/search.png",
            // By default our  icon color is white
            color: textColor,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Image.asset(
            "assets/icons/cart.png",
            // By default our  icon color is white
            color: textColor,
          ),
          onPressed: () {},
        ),
        SizedBox(width: paddingd / 2)
      ],
    );
  }

}


