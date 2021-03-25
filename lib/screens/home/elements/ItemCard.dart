import 'package:flutter/material.dart';
import 'package:meatshop_app/data/Items.dart';
import 'package:meatshop_app/util.dart';

class ItemCard extends StatelessWidget {

  final Items item;
  final Function press;
  const ItemCard({
    Key key,
    this.item,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(paddingd),
              // For  demo we use fixed height  and width
              // Now we dont need them
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                color: item.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
                tag: "${item.id}",
                child: Image.asset(item.image),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: paddingd / 4),
            child: Text(
              // products is out demo list
              item.title,
              style: TextStyle(color: textLtColor),
            ),
          ),
          Text(
            "Rs. ${item.price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

