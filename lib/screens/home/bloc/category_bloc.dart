import 'dart:async';
import 'package:meatshop_app/screens/home/bloc/category_provider.dart';

class CategoryBloc{
  final categoryController = StreamController();
  CategoryProvider categoryProvider = new CategoryProvider();

  Stream get getCategory => categoryController.stream;

  void updateCategory(String navigation) {
    categoryProvider.updateCategory(navigation);
    categoryController.sink.add(categoryProvider.currentCategory);
  }

  void dispose() {
    categoryController.close();
  }
}

final bloc = CategoryBloc();