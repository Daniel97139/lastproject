import 'package:flutter/material.dart';
import 'package:restaruant_danial/constants/colors.dart';
import 'package:restaruant_danial/models/food.dart';
import 'package:restaruant_danial/screens/detail/widget/food_detail.dart';
import 'package:restaruant_danial/screens/detail/widget/food_img.dart';
import 'package:restaruant_danial/widgets/custom_app_bar.dart';

class DetailPage extends StatelessWidget {
  final Food food;
  DetailPage(this.food);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryColor,
      body: SingleChildScrollView(
          child: Column(
        children: [
          CustomAppBar(
            Icons.arrow_back_ios_new_outlined,
            Icons.favorite_outline,
            leftCallback: () => Navigator.of(context).pop(),
          ),
          FoodImg(food),
          FoodDetail(food),
        ],
      )),
    );
  }
}
