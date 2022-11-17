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
      floatingActionButton: Container(
        height: 55,
        width: 100,
        child: RawMaterialButton(
          fillColor: KPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),

          ),
          elevation: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.shopping_bag_outlined,
              color: Colors.black,
                size: 30,
              ),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Text(
                  food.quantity.toString(),
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
          onPressed: (){},
        ),
      ),
    );
  }
}
