import 'package:flutter/material.dart';

extension HexColorExtension on String {
  Color toColor() {
    if (length == 6 || length == 7) {
      String hexColor = replaceAll("#", "");
      if (hexColor.length == 6) {
        hexColor = "FF$hexColor";
      }
      return Color(int.parse(hexColor, radix: 16));
    }
    throw FormatException("Invalid hex color: $this");
  }
}