

import 'package:flutter/material.dart';
import 'package:meatshop_app/data/Items.dart';
import 'package:meatshop_app/util.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    Key key,
    @required this.item,
  }) : super(key: key);

  final Items item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: paddingd),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: paddingd),
            height: 50,
            width: 58,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: item.color,
              ),
            ),
            child: IconButton(
              icon: Image.asset(
                "assets/icons/addcart.png",
                color: item.color,
              ),
              onPressed: () {},
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                color: item.color,
                onPressed: () {},
                child: Text(
                  "Buy  Now".toUpperCase(),
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}