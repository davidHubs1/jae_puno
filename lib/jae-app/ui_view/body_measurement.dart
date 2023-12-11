import 'package:flutter/material.dart';
import 'package:jae_puno/jae-app/app_theme.dart';
import 'package:jae_puno/jae-app/models/carreras.dart';

void dialogActionButton(BuildContext context, bool isSelected) {
  final carreras = Carreras.tabIconsList[0];
  final mealsListData = Carreras.tabIconsList[0];

  showDialog(
    barrierDismissible: false,
    barrierColor: FitnessAppTheme.background,
    context: context,
    builder: (context) {
      return AlertDialog(
        // icon: Image.asset(
        //   carreras.imagePath,
        //   height: 90,
        // ),
        backgroundColor: FitnessAppTheme.background,
        actions: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  carreras.imagePath,
                  height: 90,
                ),
              ),
              Text(
                carreras.titleTxt,
                style: FitnessAppTheme.display1,
              ),
              const SizedBox(height: 12),
              Text(
                carreras.subtitile,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
            ],
          ),
          Divider(
            // indent: 20,
            // endIndent: 20,
            color: FitnessAppTheme.grey.withOpacity(0.6),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 24, right: 24, top: 8, bottom: 16),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.access_time,
                            color: FitnessAppTheme.grey.withOpacity(0.5),
                            size: 16,
                          ),
                          // const SizedBox(width: 5),
                          Text(
                            '${mealsListData.hrs}',
                            textAlign: TextAlign.right,
                            style: const TextStyle(
                              fontFamily: FitnessAppTheme.fontName,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              letterSpacing: -0.2,
                              color: FitnessAppTheme.darkText,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Text(
                          'Total De Horas',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: FitnessAppTheme.fontName,
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: FitnessAppTheme.grey.withOpacity(0.5),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            mealsListData.modls.toString(),
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontFamily: FitnessAppTheme.fontName,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              letterSpacing: -0.2,
                              color: FitnessAppTheme.darkText,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 6),
                            child: Text(
                              'Módulos',
                              style: TextStyle(
                                fontFamily: FitnessAppTheme.fontName,
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: FitnessAppTheme.grey.withOpacity(0.5),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            '100%',
                            style: TextStyle(
                              fontFamily: FitnessAppTheme.fontName,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              letterSpacing: -0.2,
                              color: FitnessAppTheme.darkText,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 6),
                            child: Text(
                              'Prácticos',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: FitnessAppTheme.fontName,
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: FitnessAppTheme.grey.withOpacity(0.5),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text("Cerrar", style: FitnessAppTheme.title),
          ),
        ],

        elevation: 10,
      );
    },
  );
}

class BodyMeasurementView extends StatelessWidget {
  final AnimationController? animationController;
  final Animation<double>? animation;

  const BodyMeasurementView(
      {Key? key, this.animationController, this.animation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mealsListData = Carreras.tabIconsList[0];

    return AnimatedBuilder(
      animation: animationController!,
      builder: (BuildContext context, Widget? child) {
        return FadeTransition(
          opacity: animation!,
          child: Transform(
            transform: Matrix4.translationValues(
                0.0, 30 * (1.0 - animation!.value), 0.0),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 24, right: 24, top: 16, bottom: 18),
              child: Container(
                // height: 170,
                decoration: BoxDecoration(
                  color: FitnessAppTheme.white,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      bottomLeft: Radius.circular(8.0),
                      bottomRight: Radius.circular(8.0),
                      topRight: Radius.circular(68.0)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: FitnessAppTheme.grey.withOpacity(0.2),
                        offset: const Offset(1.1, 1.1),
                        blurRadius: 10.0),
                  ],
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      top: -0,
                      right: 0,
                      child: Image.asset(
                        mealsListData.imagePath,
                        height: 90,
                        width: 100,
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 16, left: 16, right: 14), //right 24,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Carrera : ',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: FitnessAppTheme.fontName,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    letterSpacing: -0.1,
                                    color: FitnessAppTheme.darkText),
                              ),
                              const SizedBox(height: 12),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 4, bottom: 0),
                                    child: Text(
                                      mealsListData.titleTxt,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontFamily: FitnessAppTheme.fontName,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 32,
                                        color: FitnessAppTheme.nearlyDarkBlue,
                                      ),
                                    ),
                                  ),
                                  //
                                ],
                              ),
                              const SizedBox(height: 5),
                              Row(
                                children: [
                                  Icon(
                                    Icons.info_outline,
                                    color:
                                        FitnessAppTheme.grey.withOpacity(0.5),
                                    size: 16,
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    mealsListData.subtitile,
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
                                      fontFamily: FitnessAppTheme.fontName,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      letterSpacing: -0.2,
                                      color: FitnessAppTheme.darkText,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 24, right: 24, top: 8, bottom: 5),
                          child: Container(
                            height: 2,
                            decoration: const BoxDecoration(
                              color: FitnessAppTheme.background,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4.0)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 24, right: 24, top: 8, bottom: 16),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Más Infomación',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily:
                                                  FitnessAppTheme.fontName,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12,
                                              color: FitnessAppTheme.grey
                                                  .withOpacity(0.5),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () => dialogActionButton(
                                                context, false),
                                            child: Icon(
                                              Icons.arrow_forward_ios_outlined,
                                              size: 20,
                                              color: FitnessAppTheme.grey
                                                  .withOpacity(0.5),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

///
///

//  Column(
//                   children: <Widget>[
//                     Padding(
//                       padding: const EdgeInsets.only(
//                           top: 16, left: 16, right: 14), //right 24
//                       child: Column(
//                           // mainAxisAlignment: MainAxisAlignment.center,
//                           // crossAxisAlignment: CrossAxisAlignment.start,
//                         children: <Widget>[
//                           Row(
//                             children: [
//                               const Padding(
//                                 padding: EdgeInsets.only(
//                                     left: 4, bottom: 8, top: 16),
//                                 child: Text(
//                                   'Carrera : ',
//                                   textAlign: TextAlign.center,
//                                   style: TextStyle(
//                                       fontFamily: FitnessAppTheme.fontName,
//                                       fontWeight: FontWeight.w500,
//                                       fontSize: 16,
//                                       letterSpacing: -0.1,
//                                       color: FitnessAppTheme.darkText),
//                                 ),
//                               ),
//                               const SizedBox(
//                                 width: 175,
//                               ),
//                               /// TODO : cambiar info de carrera
//                               Column(
//                                 children: [
//                                   Text('more info'),
//                                   IconButton(
//                                     onPressed: () {},
//                                     icon: const Icon(
//                                       Icons.info,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: <Widget>[
//                               Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.end,
//                                 children: <Widget>[
//                                   Padding(
//                                     padding: const EdgeInsets.only(
//                                         left: 4, bottom: 3),
//                                     child: Text(
//                                       mealsListData.titleTxt,
//                                       textAlign: TextAlign.center,
//                                       style: const TextStyle(
//                                         fontFamily: FitnessAppTheme.fontName,
//                                         fontWeight: FontWeight.w600,
//                                         fontSize: 32,
//                                         color: FitnessAppTheme.nearlyDarkBlue,
//                                       ),
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.only(
//                                         left: 8, bottom: 8),
//                                     child: Text(
//                                       mealsListData.subtitile,
//                                       textAlign: TextAlign.center,
//                                       style: const TextStyle(
//                                         fontFamily: FitnessAppTheme.fontName,
//                                         fontWeight: FontWeight.w500,
//                                         fontSize: 18,
//                                         letterSpacing: -0.2,
//                                         color: FitnessAppTheme.nearlyDarkBlue,
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           )
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(
//                           left: 24, right: 24, top: 8, bottom: 8),
//                       child: Container(
//                         height: 2,
//                         decoration: const BoxDecoration(
//                           color: FitnessAppTheme.background,
//                           borderRadius: BorderRadius.all(Radius.circular(4.0)),
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(
//                           left: 24, right: 24, top: 8, bottom: 16),
//                       child: Row(
//                         children: <Widget>[
//                           Expanded(
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: <Widget>[
//                                 Row(
//                                   children: [
//                                     Icon(
//                                       Icons.access_time,
//                                       color:
//                                           FitnessAppTheme.grey.withOpacity(0.5),
//                                       size: 16,
//                                     ),
//                                     const SizedBox(width: 5),
//                                     Text(
//                                       '${mealsListData.hrs} hrs',
//                                       textAlign: TextAlign.center,
//                                       style: const TextStyle(
//                                         fontFamily: FitnessAppTheme.fontName,
//                                         fontWeight: FontWeight.w500,
//                                         fontSize: 16,
//                                         letterSpacing: -0.2,
//                                         color: FitnessAppTheme.darkText,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 Padding(
//                                   padding: const EdgeInsets.only(top: 6),
//                                   child: Text(
//                                     'Total de Horas',
//                                     textAlign: TextAlign.center,
//                                     style: TextStyle(
//                                       fontFamily: FitnessAppTheme.fontName,
//                                       fontWeight: FontWeight.w600,
//                                       fontSize: 12,
//                                       color:
//                                           FitnessAppTheme.grey.withOpacity(0.5),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Expanded(
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: <Widget>[
//                                 Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: <Widget>[
//                                     Text(
//                                       mealsListData.modls.toString(),
//                                       textAlign: TextAlign.center,
//                                       style: const TextStyle(
//                                         fontFamily: FitnessAppTheme.fontName,
//                                         fontWeight: FontWeight.w500,
//                                         fontSize: 16,
//                                         letterSpacing: -0.2,
//                                         color: FitnessAppTheme.darkText,
//                                       ),
//                                     ),
//                                     Padding(
//                                       padding: const EdgeInsets.only(top: 6),
//                                       child: Text(
//                                         'Módulos',
//                                         textAlign: TextAlign.center,
//                                         style: TextStyle(
//                                           fontFamily: FitnessAppTheme.fontName,
//                                           fontWeight: FontWeight.w600,
//                                           fontSize: 12,
//                                           color: FitnessAppTheme.grey
//                                               .withOpacity(0.5),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Expanded(
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.end,
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: <Widget>[
//                                 Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   crossAxisAlignment: CrossAxisAlignment.end,
//                                   children: <Widget>[
//                                     const Text(
//                                       '100%',
//                                       style: TextStyle(
//                                         fontFamily: FitnessAppTheme.fontName,
//                                         fontWeight: FontWeight.w500,
//                                         fontSize: 16,
//                                         letterSpacing: -0.2,
//                                         color: FitnessAppTheme.darkText,
//                                       ),
//                                     ),
//                                     Padding(
//                                       padding: const EdgeInsets.only(top: 6),
//                                       child: Text(
//                                         'Prácticos',
//                                         textAlign: TextAlign.center,
//                                         style: TextStyle(
//                                           fontFamily: FitnessAppTheme.fontName,
//                                           fontWeight: FontWeight.w600,
//                                           fontSize: 12,
//                                           color: FitnessAppTheme.grey
//                                               .withOpacity(0.5),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           )
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
