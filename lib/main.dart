import 'package:flutter/material.dart';
import 'package:food_app/categories_page.dart';
import 'package:food_app/foods_page.dart';
import 'package:food_app/detail_food_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, child) => MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'FoodApp',
              initialRoute: '/',
              routes: {
                '/FoodsPage': (context) => FoodsPage(),
                '/CategoriesPage': (context) => CategoriesPage(),
                'DetailFoodPage': (context) => DetailFoodPage(),
              },
              theme: ThemeData(
                  primaryColor: Colors.amber, primarySwatch: Colors.lime),
              home: Scaffold(
                  appBar: AppBar(
                    title: const Text(
                      'Food\'s Catagories',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    centerTitle: true,
                  ),
                  body: const SafeArea(
                    child: CategoriesPage(),
                  )),
            ));
  }
}
