import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/category_item.dart';
import 'package:food_app/fake_data.dart';

class CategoriesPage extends StatelessWidget {
  static const String routeName = '/CategoriesPage';

  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(12),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300.w, //chiều rộng tối đa
          childAspectRatio: 3 / 2, //tỉ lệ chiều rộng/chiều cao
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
      children: FAKE_CATEGORYS
          .map((eachCategory) => CategoryItem(category: eachCategory))
          .toList(),
    );
  }
}
