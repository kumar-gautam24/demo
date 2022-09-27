import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray600 = fromHex('#707070');

  static Color gray700 = fromHex('#666b68');

  static Color black900 = fromHex('#010f08');

  static Color bluegray400 = fromHex('#888888');

  static Color gray900Cc = fromHex('#cc151716');

  static Color greenA700Cc = fromHex('#cc0ec137');

  static Color black901 = fromHex('#000000');

  static Color bluegray100 = fromHex('#d7d3d3');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
