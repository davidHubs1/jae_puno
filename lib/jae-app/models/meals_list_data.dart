class MealsListData {
  MealsListData({
    this.imagePath = '',
    this.titleTxt = '',
    this.startColor = '',
    this.endColor = '',
    this.meals,
    this.hrs = 0,
  });

  String imagePath;
  String titleTxt;
  String startColor;
  String endColor;
  List<String>? meals;
  int hrs;

  static List<MealsListData> tabIconsList = <MealsListData>[
    MealsListData(
      imagePath: 'assets/img/arquitectuara.png',
      titleTxt: 'APSI',
      hrs: 525,
      startColor: '#FA7D82',
      endColor: '#FFB295',
    ),
    MealsListData(
      imagePath: 'assets/img/conta.png',
      titleTxt: 'CONTABILIDAD',
      hrs: 602,
      startColor: '#738AE6',
      endColor: '#5C5EDD',
    ),
    MealsListData(
      imagePath: 'assets/img/turismo.png',
      titleTxt: 'TURISMO',
      hrs: 900,
      startColor: '#FE95B6',
      endColor: '#FF5287',
    ),
    MealsListData(
      imagePath: 'assets/img/produccion.png',
      titleTxt: 'PRODUCCIÓN',
      hrs: 900,
      startColor: '#6F72CA',
      endColor: '#1E1466',
    ),
    //
    MealsListData(
      imagePath: 'assets/img/construccions.png',
      titleTxt: 'Construccion',
      hrs: 525,
      startColor: '#FA7D82',
      endColor: '#FFB295',
    ),
    MealsListData(
      imagePath: 'assets/img/electricidad.png',
      titleTxt: 'ELECTRICIDAD',
      hrs: 602,
      startColor: '#738AE6',
      endColor: '#5C5EDD',
    ),
    MealsListData(
      imagePath: 'assets/img/electronica.png',
      titleTxt: 'ELECTRONICA',
      hrs: 900,
      startColor: '#FE95B6',
      endColor: '#FF5287',
    ),
  ];
}
