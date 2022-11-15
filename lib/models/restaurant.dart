 import 'package:restaruant_danial/models/food.dart';


class Restaurant{
  String name;
  String waitTime;
  String distance;
  String label;
  String logoUrl;
  String desc;
  num score;
  Map<String,List<Food>>menu;
  Restaurant(this.name,this.waitTime,this.distance,this.label,this.logoUrl,this.desc,this.score,this.menu);

  static Restaurant generateRestaurant(){
    return Restaurant('رستورات', '20-30 دقیقه', ' 2.4کیلو متر', 'رستورانت', 'assets/images/res_logo.png', 'خوب برگر ها داریم', 4.7,
        {
          'پیشنهاد میشود': Food.generateRecommendFoods(),
          'همه میخورند' : Food.generatePopularFoods(),
          'پیتزا':[],
          'ساندویچ ها':[],
        }
    );
  }



 }