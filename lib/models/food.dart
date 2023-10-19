import 'dart:math';

import 'category.dart';

class Food {
  int? id;
  String name;
  String urlName;
  Duration duration;
  Complexity? complexity;
  List<String>? ingredients;

  int? categoryId;

  Food(
      {required this.name,
      required this.urlName,
      required this.duration,
      this.complexity,
      this.ingredients,
      this.categoryId}) {
    id = Random().nextInt(100);
  }
}

enum Complexity { Simple, Medium, Hard }
