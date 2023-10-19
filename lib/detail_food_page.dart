import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/models/food.dart';

class DetailFoodPage extends StatelessWidget {
  static const String routeName = '/DetailFoodPage';
  Food? food;

  DetailFoodPage({super.key, this.food});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(food!.name),
        iconTheme: const IconThemeData.fallback(),
      ),
      body: Column(
        children: [
          Center(
            child: FadeInImage.assetNetwork(
                placeholder: 'assets/images/Loading_icon.gif',
                image: food!.urlName),
          ),
          Container(
            padding: EdgeInsets.all(20.w),
            child: Text('Ingredients: ',
                style: TextStyle(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Itim')),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: food?.ingredients?.length,
            itemBuilder: (context, index) {
              String? ingredient = food!.ingredients?[index];
              return ListTile(
                leading: CircleAvatar(
                    child: Text('#${index + 1}',
                        style: TextStyle(
                            fontSize: 25.sp,
                            fontFamily: 'Itim',
                            color: Colors.white70)),
                    backgroundColor: Colors.blueGrey),
                title: Text(
                  ingredient!,
                  style: TextStyle(fontSize: 25.sp, fontFamily: 'Itim'),
                ),
              );
            },
          ))
        ],
      ),
    );
  }
}
