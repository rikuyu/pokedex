
import 'package:flutter/material.dart';

class TypeColor {
  static int get colorNormal => 0xFFE1EDFC;

  static int get colorFighting => 0xFFFCA35B;

  static int get colorFlying => 0xFF6FCBFC;

  static int get colorPoison => 0xFF9F5BBA;

  static int get colorGround => 0xFFCA8179;

  static int get colorRock => 0xFFCA8179;

  static int get colorBug => 0xFF2CDAB1;

  static int get colorGhost => 0xFF9F5BBA;

  static int get colorSteel => 0xFF9BB4D4;

  static int get colorFire => 0xFFF8A060;

  static int get colorWater => 0xFF128FFC;

  static int get colorGrass => 0xFF68D98C;

  static int get colorElectric => 0xFFFFCE4B;

  static int get colorPsychic => 0xFFF02CF2;

  static int get colorIce => 0xFF83CEFC;

  static int get colorDark => 0xFF303943;

  static int get colorDragon => 0xFF0A2AFC;

  static int get colorFairy => 0xFFFA56FC;
}

extension TypeColorExt on String {
  int getTypeColor() {
    switch (this) {
      case "ノーマル":
        return TypeColor.colorNormal;
      case "かくとう":
        return TypeColor.colorFighting;
      case "ひこう":
        return TypeColor.colorFlying;
      case "どく":
        return TypeColor.colorPoison;
      case "じめん":
        return TypeColor.colorGround;
      case "いま":
        return TypeColor.colorRock;
      case "むし":
        return TypeColor.colorBug;
      case "ゴースト":
        return TypeColor.colorGhost;
      case "はがね":
        return TypeColor.colorSteel;
      case "ほのお":
        return TypeColor.colorFire;
      case "みず":
        return TypeColor.colorWater;
      case "くさ":
        return TypeColor.colorGrass;
      case "でんき":
        return TypeColor.colorElectric;
      case "エスパー":
        return TypeColor.colorPsychic;
      case "こおり":
        return TypeColor.colorIce;
      case "あく":
        return TypeColor.colorDark;
      case "ドラゴン":
        return TypeColor.colorDragon;
      case "フェアリー":
        return TypeColor.colorFairy;
      default:
        return TypeColor.colorNormal;
    }
  }
}

extension ColorExt on Color {
  Color getThemeColor() {
    if (computeLuminance() > 0.5) {
      return Colors.black;
    }
    return Colors.white;
  }
}
