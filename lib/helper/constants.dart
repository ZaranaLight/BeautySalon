import 'package:flutter/material.dart';

class Constants {
  static String appName = "DOQment";
  static String tagLine = "Power App For All Your Documents";
  static String appIcon = "lib/assets/Doqment_logo.png";
  static Color appColor = HexColor.fromHex("#0040DD");
  static Color appColor2 = HexColor.fromHex("#001546");
  static Color appColor3 = Colors.blueAccent;


}


extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}