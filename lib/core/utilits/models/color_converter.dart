import 'package:flutter/material.dart';

class ColorFormatter {
 final Color? color;
 final String? hexColor;
final  int? intValue;
  ColorFormatter({
    this.color,
    this.hexColor,
    this.intValue,
  });



 

 

  factory ColorFormatter.fromHex(String hexColor){
    if (hexColor.length == 6 || hexColor.length == 7) {
      String hexValue = hexColor.replaceAll("#", "");
      if (hexValue.length == 6) {
        hexValue = "FF" + hexValue;
      }
      return ColorFormatter(color: Color(int.parse(hexValue, radix: 16)) );
    }
    throw FormatException("Invalid hex color: $hexColor");
  }

 factory ColorFormatter.toHex(Color color) {
    String hexValue = color.value.toRadixString(16).padLeft(8, '0');
    return ColorFormatter(hexColor: '#${hexValue.substring(2)}');
    
    
  }

   factory ColorFormatter.fromInt(int intValue) {
    return ColorFormatter(color: Color(intValue));
  }

 factory ColorFormatter.toInt(Color color)  {
    return ColorFormatter(intValue: color.value );
  }
}
