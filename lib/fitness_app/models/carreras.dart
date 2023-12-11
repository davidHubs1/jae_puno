class Carreras {
  Carreras({
    this.imagePath = '',
    this.titleTxt = '',
    this.subtitile = '',
    this.modls = 0,
    this.hrs = 0,
  });

  String subtitile;
  String imagePath;
  String titleTxt;
  int modls;
  int hrs;

  static List<Carreras> tabIconsList = <Carreras>[
    Carreras(
      imagePath: 'assets/img/arquitectuara.png',
      titleTxt: 'Arquitectura',
      subtitile: 'Arquitectura de Plataformas y Servicios de Tecnología',
      hrs: 525,
      modls: 3,
    ),
    Carreras(
      imagePath: 'assets/img/conta.png',
      titleTxt: 'CONTABILIDAD',
      hrs: 602,
      modls: 3,
    ),
    Carreras(
      imagePath: 'assets/img/turismo.png',
      titleTxt: 'TURISMO',
      hrs: 900,
      modls: 3,
    ),
    Carreras(
      imagePath: 'assets/img/produccion.png',
      titleTxt: 'PRODUCCIÓN',
      hrs: 900,
      modls: 3,
    ),
    //
    Carreras(
      imagePath: 'assets/img/construccions.png',
      titleTxt: 'Construccion',
      hrs: 525,
      modls: 3,
    ),
    Carreras(
      imagePath: 'assets/img/electricidad.png',
      titleTxt: 'ELECTRICIDAD',
      hrs: 602,
      modls: 3,
    ),
    Carreras(
      imagePath: 'assets/img/electronica.png',
      titleTxt: 'ELECTRONICA',
      hrs: 900,
      modls: 3,
    ),
  ];
}
