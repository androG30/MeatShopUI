import 'package:flutter/material.dart';
import 'package:meatshop_app/data/Items.dart';
import 'package:meatshop_app/screens/details/details_page.dart';
import 'package:meatshop_app/screens/home/bloc/category_bloc.dart';
import 'package:meatshop_app/util.dart';

import 'Categories.dart';
import 'ItemCard.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: paddingd),
          child: Text(
            "Chicken Meat & Fishes",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: paddingd),
            child: StreamBuilder<Object>(
                stream: bloc.getCategory,
                initialData: bloc.categoryProvider.currentCategory,
                builder: (context, snapshot) {
                  if (bloc.categoryProvider.currentCategory == "Chicken Meat") {
                    return GridView.builder(
                        itemCount: data.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: paddingd,
                          crossAxisSpacing: paddingd,
                          childAspectRatio: 0.75,
                        ),
                        itemBuilder: (context, index) => ItemCard(
                              item: data[index],
                              press: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetailsScreen(
                                      item: data[index],
                                    ),
                                  )),
                            ));
                  } else {
                    return GridView.builder(
                        itemCount: data1.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: paddingd,
                          crossAxisSpacing: paddingd,
                          childAspectRatio: 0.75,
                        ),
                        itemBuilder: (context, index) => ItemCard(
                              item: data1[index],
                              press: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetailsScreen(
                                      item: data1[index],
                                    ),
                                  )),
                            ));
                  }
                }),
          ),
        ),
      ],
    );
  }
}
