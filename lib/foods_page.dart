import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/fake_data.dart';
import 'package:food_app/models/category.dart';
import 'package:food_app/models/food.dart';
import 'package:food_app/models/food.dart';

import 'detail_food_page.dart';
import 'models/food.dart';

class FoodsPage extends StatelessWidget {
  static const String routeName = '/FoodsPage';
  Category? category;

  FoodsPage({super.key, this.category});

  @override
  Widget build(BuildContext context) {
    Map<String, Category>? arguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, Category>?;
    category = arguments!['category'];
    List<Food> foods =
        FAKE_FOODS.where((food) => food.categoryId == category?.id).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(category!.content),
          iconTheme: const IconThemeData.fallback(),
        ),
        body: Center(
          child: Center(
            child: foods.length > 0
                ? ListView.builder(
                    itemCount: foods.length,
                    itemBuilder: (context, index) {
                      Food food = foods[index];
                      return InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => DetailFoodPage(
                                    food: food,
                                  )));
                        },
                        child: Stack(
                          children: [
                            Container(
                              padding: EdgeInsets.all(12.w),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.w),
                                clipBehavior: Clip.hardEdge,
                                child: Center(
                                  child: FadeInImage.assetNetwork(
                                      placeholder:
                                          'assets/images/Loading_icon.gif',
                                      image: food.urlName),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 30.h,
                              left: 30.w,
                              child: Container(
                                padding: EdgeInsets.all(5.w),
                                decoration: BoxDecoration(
                                    color: Colors.black45,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: Colors.white70, width: 2)),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.timer_outlined,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      '${food.duration.inMinutes} Minutes',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20.sp,
                                          fontFamily: 'Itim'),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top: 30.h,
                              right: 30.w,
                              child: Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Colors.lightGreenAccent,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: Colors.white70, width: 2)),
                                child: Row(
                                  children: [
                                    Text(
                                      '${food.complexity}',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20.sp,
                                          fontFamily: 'Itim'),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 30.h,
                              right: 30.w,
                              child: Container(
                                padding: EdgeInsets.all(5.w),
                                decoration: BoxDecoration(
                                    color: Colors.black45,
                                    borderRadius: BorderRadius.circular(10.w),
                                    border: Border.all(
                                        color: Colors.white70, width: 2)),
                                child: Row(
                                  children: [
                                    Text(
                                      '${food.name}',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20.sp,
                                          fontFamily: 'Itim'),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    })
                : Text(
                    'No Foods Found',
                    style:
                        TextStyle(fontSize: 30.sp, fontWeight: FontWeight.bold),
                  ),
          ),
        ));
  }
}
