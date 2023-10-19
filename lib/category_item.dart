import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/foods_page.dart';
import 'package:food_app/models/category.dart';

class CategoryItem extends StatelessWidget {
  Category category;

  CategoryItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    Color _color = category.color;
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, FoodsPage.routeName,
            arguments: {'category': category});
      },
      splashColor: Colors.deepPurple,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              category.content,
              style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Itim'),
            )
          ],
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [_color.withOpacity(0.6), _color],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            color: _color,
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
