import 'package:flutter/material.dart';

const Map<String, Color> typeColor = {
  "ノーマル": Color(0xFFE1EDFC),
  "かくとう": Color(0xFFFCA35B),
  "ひこう": Color(0xFF6FCBFC),
  "どく": Color(0xFF9F5BBA),
  "じめん": Color(0xFFCA8179),
  "いま": Color(0xFFCA8179),
  "むし": Color(0xFF99B34D),
  "ゴースト": Color(0xFF9F5BBA),
  "はがね": Color(0xFF9BB4D4),
  "ほのお": Color(0xFFF8A060),
  "みず": Color(0xFF128FFC),
  "くさ": Color(0xFF4ECC76),
  "でんき": Color(0xFFFFCE4B),
  "エスパー": Color(0xFFF02CF2),
  "こおり": Color(0xFF83CEFC),
  "あく": Color(0xFF303943),
  "ドラゴン": Color(0xFF0A2AFC),
  "フェアリー": Color(0xFFFA56FC),
};

extension ColorExt on Color {
  Color getThemeColor() {
    if (computeLuminance() > 0.5) {
      return Colors.black;
    }
    return Colors.white;
  }
}
