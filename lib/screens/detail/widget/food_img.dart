import 'package:flutter/material.dart';
import 'package:restaruant_danial/constants/colors.dart';
import 'package:restaruant_danial/models/food.dart';

class FoodImg extends StatelessWidget {
  final Food food;
  FoodImg(this.food);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(),
              ),
              Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.5),
                        topRight: Radius.circular(50.5),
                      ),
                      color: KBackground,
                    ),
                  ))
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.all(15),
              width: 200,
              height: 200,
              decoration: BoxDecoration(shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      offset: Offset(-1, 10),
                      blurRadius: 10,
                    )
                  ]),
              child: CircleAvatar(
                backgroundImage: AssetImage(food.imgUrl),
              ),
            ),
          )
        ],
      ),
    );
  }
}
