import 'package:flutter/material.dart';
import 'package:meatshop_app/data/Items.dart';

import '../../../util.dart';

class Description extends StatelessWidget {
  const Description({
    Key key,
    @required this.item,
  }) : super(key: key);

  final Items item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: paddingd),
      child: Text(
        item.description,
        style: TextStyle(height: 1.5),
      ),
    );
  }
}