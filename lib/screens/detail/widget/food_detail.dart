import 'package:flutter/material.dart';
import 'package:restaruant_danial/constants/colors.dart';
import 'package:restaruant_danial/models/food.dart';

class FoodDetail extends StatelessWidget {
  final Food food;
  FoodDetail(this.food);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      color: KBackground,
      child: Column(
        children: [
          Text(
            food.name,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
               _buildIconText(Icons.access_time_filled_outlined,Colors.blue,food.waitTime),
              _buildIconText(Icons.star_outline,Colors.amber,food.score.toString()),
              _buildIconText(Icons.local_fire_department_outlined,Colors.red,food.cal),
            ],
          ),
          SizedBox(height: 30,)
        ],
      ),
    );
  }

  Widget _buildIconText(IconData icon,Color color,String text) {
    return Row(
      children: [
       Icon(
         icon,
         color: color,
         size: 20,
       ),
        Text(
          text,
          style: TextStyle(
            fontSize: 16,
          ),
        )
      ],
    );

  }
}