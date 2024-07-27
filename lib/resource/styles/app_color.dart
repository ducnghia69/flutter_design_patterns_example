import 'package:flutter/material.dart';
import 'package:flutter_design_patterns_example/resource/styles/app_theme.dart';


class AppColor {
  const AppColor({
    required this.primaryColor,
    required this.darkPrimaryColor,
    required this.orange,
    required this.orange50,
    required this.blue,
    required this.green,
    required this.red,
    required this.purple,
    required this.pink,
    required this.vividBlue,
    required this.lightGrayishOrange,
    required this.primaryTextColor,
    required this.secondaryTextColor,
    required this.blue30,
    required this.primaryGradient,
    required this.secondaryGradient,
    required this.grey,
    required this.white,
    required this.black,
    required this.dodgerBlue,
    required this.robinsEggBlue,
    required this.barleyWhite,
    required this.dustyGray,
    required this.persianGreen,
    required this.blackSqueeze,
    required this.mineShaft,
    required this.doveGray,
    required this.danube,
    required this.flushOrange,
    required this.mercury,
    required this.yourPink,
    required this.sliver,
    required this.creamBrulee,
    required this.gray,
    required this.nobel,
    required this.amber,
    required this.alto,
    required this.matisse,
    required this.sunglo,
    required this.squeeze,
    required this.greenHaze,
    required this.jasminePurple,
    required this.fadedGreen,
    required this.saffronMango,
  });

  static late AppColor current;

  final Color primaryColor;
  final Color darkPrimaryColor;
  final Color orange;
  final Color orange50;
  final Color blue;
  final Color blue30;
  final Color green;
  final Color red;
  final Color purple;
  final Color pink;
  final Color primaryTextColor;
  final Color secondaryTextColor;
  final Color vividBlue;
  final Color lightGrayishOrange;
  final Color grey;
  final Color dodgerBlue;
  final Color white;
  final Color black;
  final Color robinsEggBlue;
  final Color barleyWhite;
  final Color dustyGray;
  final Color persianGreen;
  final Color blackSqueeze;
  final Color mineShaft;
  final Color doveGray;
  final Color danube;
  final Color flushOrange;
  final Color mercury;
  final Color yourPink;
  final Color sliver;
  final Color creamBrulee;
  final Color gray;
  final Color nobel;
  final Color amber;
  final Color alto;
  final Color matisse;
  final Color sunglo;
  final Color squeeze;
  final Color greenHaze;
  final Color jasminePurple;
  final Color fadedGreen;
  final Color saffronMango;

  /// gradient
  final LinearGradient primaryGradient;
  final LinearGradient secondaryGradient;

  static final defaultAppColor = AppColor(
    primaryColor: const Color(0xFFFFFFFF),
    darkPrimaryColor: const Color(0xFF000000),
    orange: const Color(0xFFE77D00),
    orange50: const Color(0xFFE77D00).withOpacity(0.5),
    blue: const Color(0xFF033888),
    blue30: const Color(0xFF033888).withOpacity(0.3),
    green: const Color(0xFF4caf50),
    red: const Color(0xFFDA1414),
    purple: const Color(0xFF612697),
    pink: const Color(0xFFE0617D),
    vividBlue: const Color(0xFF1A9FFB),
    lightGrayishOrange: const Color(0xFFEFEDEA),
    primaryTextColor: const Color(0xFF202020),
    secondaryTextColor: const Color(0xFF767A7D),
    primaryGradient: const LinearGradient(colors: [Color(0xFFFFFFFF), Color(0xFFFE6C30)]),
    secondaryGradient: const LinearGradient(
      colors: [
        Color(0xFF7FA4D2),
        Color(0xFF1E2B3B),
        Color(0xFF223246),
        Color(0xFF3F618C),
      ],
    ),
    grey: Colors.grey,
    white: const Color(0xFFFFFFFF),
    black: const Color(0xFF000000),
    dodgerBlue: const Color(0xff09B9FF),
    robinsEggBlue: const Color(0xff00c8c9),
    barleyWhite: const Color(0xfffff3cc),
    dustyGray: const Color(0xff999999),
    persianGreen: const Color(0xff00A6A6),
    blackSqueeze: const Color(0xffE5F6F6),
    mineShaft: const Color(0xff333333),
    doveGray: const Color(0xff666666),
    danube: const Color(0xff518FCC),
    flushOrange: const Color(0xffFF7700),
    mercury: const Color(0xffE6E6E6),
    yourPink: const Color(0xffFFCCCC),
    sliver: const Color(0xffCCCCCC),
    creamBrulee: const Color(0xffFFe599),
    gray: const Color(0xff808080),
    nobel: const Color(0xffB3B3B3),
    amber: const Color(0xffFFBF00),
    alto: const Color(0xffD9D9D9),
    matisse: const Color(0xff1F5CA5),
    sunglo: const Color(0xffE06666),
    squeeze: const Color(0xffE5F6F6),
    greenHaze: const Color(0xff009A50),
    jasminePurple: const Color(0xff9F2BEB),
    fadedGreen: const Color(0xff7ABA78),
    saffronMango: const Color(0xffF3CA52),
  );

  static AppColor of(BuildContext context) {
    final appColor = Theme.of(context).appColor;

    current = appColor;

    return current;
  }

  AppColor copyWith({
    Color? primaryColor,
    Color? darkPrimaryColor,
    Color? orange,
    Color? orange50,
    Color? blue,
    Color? blue30,
    Color? green,
    Color? red,
    Color? purple,
    Color? pink,
    Color? vividBlue,
    Color? lightGrayishOrange,
    Color? primaryTextColor,
    Color? secondaryTextColor,
    LinearGradient? primaryGradient,
    LinearGradient? secondaryGradient,
    Color? grey,
    Color? white,
    Color? black,
    Color? dodgerBlue,
    Color? robinsEggBlue,
    Color? barleyWhite,
    Color? dustyGray,
    Color? persianGreen,
    Color? blackSqueeze,
    Color? mineShaft,
    Color? doveGray,
    Color? danube,
    Color? flushOrange,
    Color? mercury,
    Color? yourPink,
    Color? sliver,
    Color? creamBrulee,
    Color? gray,
    Color? nobel,
    Color? amber,
    Color? alto,
    Color? matisse,
    Color? sunglo,
    Color? squeeze,
    Color? greenHaze,
    Color? jasminePurple,
    Color? fadedGreen,
    Color? saffronMango,
  }) {
    return AppColor(
      primaryColor: primaryColor ?? this.primaryColor,
      darkPrimaryColor: darkPrimaryColor ?? this.darkPrimaryColor,
      orange: orange ?? this.orange,
      orange50: orange50 ?? this.orange50,
      blue: blue ?? this.blue,
      blue30: blue30 ?? this.blue30,
      green: green ?? this.green,
      red: red ?? this.red,
      purple: purple ?? this.purple,
      pink: pink ?? this.pink,
      vividBlue: vividBlue ?? this.vividBlue,
      lightGrayishOrange: lightGrayishOrange ?? this.lightGrayishOrange,
      primaryTextColor: primaryTextColor ?? this.primaryTextColor,
      secondaryTextColor: secondaryTextColor ?? this.secondaryTextColor,
      primaryGradient: primaryGradient ?? this.primaryGradient,
      secondaryGradient: secondaryGradient ?? this.secondaryGradient,
      grey: grey ?? this.grey,
      white: white ?? this.white,
      black: black ?? this.black,
      dodgerBlue: dodgerBlue ?? this.dodgerBlue,
      robinsEggBlue: robinsEggBlue ?? this.robinsEggBlue,
      barleyWhite: barleyWhite ?? this.barleyWhite,
      dustyGray: dustyGray ?? this.dustyGray,
      persianGreen: persianGreen ?? this.persianGreen,
      blackSqueeze: blackSqueeze ?? this.blackSqueeze,
      mineShaft: mineShaft ?? this.mineShaft,
      doveGray: doveGray ?? this.doveGray,
      danube: danube ?? this.danube,
      flushOrange: flushOrange ?? this.flushOrange,
      mercury: mercury ?? this.mercury,
      yourPink: yourPink ?? this.yourPink,
      sliver: sliver ?? this.sliver,
      creamBrulee: creamBrulee ?? this.creamBrulee,
      gray: gray ?? this.gray,
      nobel: nobel ?? this.nobel,
      amber: amber ?? this.amber,
      alto: alto ?? this.alto,
      matisse: matisse ?? this.matisse,
      sunglo: sunglo ?? this.sunglo,
      squeeze: squeeze ?? this.squeeze,
      greenHaze: greenHaze ?? this.greenHaze,
      jasminePurple: jasminePurple ?? this.jasminePurple,
      fadedGreen: fadedGreen ?? this.fadedGreen,
      saffronMango: saffronMango ?? this.saffronMango,
    );
  }
}
