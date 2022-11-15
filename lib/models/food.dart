class Food {
  String imgUrl;
  String desc;
  String name;
  String waitTime;
  num score;
  String cal;
  num price;
  num quantity;
  List<Map<String, String>> ingredients;
  String about;
  bool hightLight;
  Food(this.imgUrl, this.desc, this.name, this.waitTime, this.score, this.cal,
      this.price, this.quantity, this.ingredients, this.about,
      {this.hightLight = false});

  static List<Food> generateRecommendFoods() {
    return [
      Food(
          'assets/images/bring o qorma.jpg',
          'پیشترین سفارش',
          'برنج و قورمه',
          '50 دقیقه',
          4.8,
          '325 kcal',
          4,
          1,
          [
            {'پیتزا': 'assets/images/pizzz.jpg'},
            {'ماکارونی': 'assets/images/Makoroni.jpg'},
            {'برگر': 'assets/images/bargur.jpg'},
            {'تحم مرغ': 'assets/images/egg.jpg'},
          ],
          'باز مینویسم یک چیزی',
          hightLight: true),
      Food(
        'assets/images/abkosht.jpg',
        'پیشترین سفارش',
        'دیزی وطنی',
        '50 دقیقه',
        4.8,
        '325 kcal',
        4,
        1,
        [
          {'پیتزا': 'assets/images/pizzz.jpg'},
          {'ماکارونی': 'assets/images/Makoroni.jpg'},
          {'برگر': 'assets/images/bargur.jpg'},
          {'تحم مرغ': 'assets/images/egg.jpg'},
        ],
        'باز مینویسم یک چیزی',
      ),
      Food(
        'assets/images/bring o kobida.jpg',
        'پیشترین سفارش',
        'برنج و کوبیده',
        '50 دقیقه',
        4.8,
        '325 kcal',
        4,
        1,
        [
          {'پیتزا': 'assets/images/pizzz.jpg'},
          {'ماکارونی': 'assets/images/Makoroni.jpg'},
          {'برگر': 'assets/images/bargur.jpg'},
          {'تحم مرغ': 'assets/images/egg.jpg'},
        ],
        'باز مینویسم یک چیزی',
      ),
    ];
  }

  static List<Food> generatePopularFoods() {
    return [
      Food(
        'assets/images/joja.jpg',
        'پیشترین سفارش',
        'برنج و جوجه',
        '50 دقیقه',
        4.8,
        '325 kcal',
        4,
        1,
        [
          {'پیتزا': 'assets/images/pizzz.jpg'},
          {'ماکارونی': 'assets/images/Makoroni.jpg'},
          {'برگر': 'assets/images/bargur.jpg'},
          {'تحم مرغ': 'assets/images/egg.jpg'},
        ],
        'باز مینویسم یک چیزی',
      ),
    ];
  }
}
