import 'package:flutter/material.dart';
import 'package:restaruant_danial/constants/colors.dart';
import 'package:restaruant_danial/widgets/custom_app_bar.dart';
import 'package:restaruant_danial/widgets/restaurant_info.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: KBackground,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(
                Icons.arrow_back_ios_new_outlined, Icons.search_outlined),
            RestaurantInfo(),
          ],
        )
    );
  }
}