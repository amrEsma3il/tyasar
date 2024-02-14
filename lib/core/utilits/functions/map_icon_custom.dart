import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tyasart/core/utilits/extensions/widget_to_map_icon.dart';

Future<BitmapDescriptor> getCustomIcon( { double? width=50, double? height=50,required String iconName}) async {
  return SizedBox(
    height: height,
    width: width,
    child: Image.asset(iconName),
  ).toBitmapDescriptor();
}