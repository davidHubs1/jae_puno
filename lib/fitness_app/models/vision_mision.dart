
import 'package:jae_puno/main.dart';

class VisionJae {
  final String vision, mision, title;
  final HexColor? color;

  VisionJae({
    required this.title,
    this.color,
    this.vision = "",
    this.mision = "",
  });

  static final visions = [
    VisionJae(
      title: 'Visión',
      vision:
          'Al 2027, ser una Institución de Educación Superior Licenciada y de excelencia formando profesionales técnicos con valores y principios; promoviendo la producción, productividad, competitividad, emprendimiento, innovación y la investigación; preservando el medio ambiente, para el desarrollo de la región y del país.',
      color: HexColor('#F56E98'),
    ),
    
  ];
  static final misions = [
    VisionJae(
      title: 'Misión',
      color: HexColor('#87A0E5'),
      mision:
          'Somos una institución que forma profesionales técnicos con valores y principios en la producción y servicios, desarrollando una cultura ambiental sostenible en la región y el país.',
    ),
  ];
}
