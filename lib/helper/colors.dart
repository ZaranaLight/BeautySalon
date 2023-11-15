import 'dart:ui';

import 'package:flutter/material.dart';

class ColorssA{

  static Color appColor = Color(0xffBFBFFF);
  static Color appDarkColor = Color(0xffa282f1);
  static Color appLightPink = Color(0xfff182d5);
  static Color appbackgroundcolor = Color(0xffeFeFFF);
  static Color Black = Colors.black;
  static Color White = Colors.white;
  static Color Gray = Colors.grey;
  static Color Blue = Colors.blue;
  static Color Red = Colors.red;
  static Color Green = Colors.green;
  static Color Yellow = Color(0xffffbd6f);


  static Color TextWhiteColor = Colors.white;
  static Color TextBlueBlackColor = Color(0xff191970);//Colors.blue.shade900;

  //ColorssA.TextWhiteColor

  static LinearGradient AppLinears = LinearGradient(
      colors: [
        Color(0xffdacdf9),
        Color(0xffa282f1)

      ],
      // stops: [0,0.8],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter
  );

  //ColorssA.TextWhiteColor
  static LinearGradient AppBlueLinears = LinearGradient(
      colors: [

        Color(0xffa282f1),
        Color(0xffa282f1)

      ],
      // stops: [0,0.8],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter
  );  //ColorssA.TextWhiteColor

  static LinearGradient AppPrice = LinearGradient(
      colors: [
        Colors.orangeAccent,
        Colors.redAccent,
        Colors.purpleAccent.withOpacity(0.2) ,
        // Color(0xff663399)
      ],
      // stops: [0,0.8],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight
  );

  static LinearGradient OrangeLinear = LinearGradient(
      colors: [
        Color(0xffffbd6f),
        Color(0xffff972f),
        // Color(0xff663399)
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter
  );

  static LinearGradient GrayLinear = LinearGradient(
      colors: [
        // Color(0xffffbd6f),
        Colors.grey.shade200,
        Colors.grey.shade400,
        // Color(0xff663399)
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter
  );


}

//ColorssA.Red ColorssA.Red