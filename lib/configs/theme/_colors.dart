part of '../configs.dart';

sealed class AppBaseColors {
  static const primary = Color(0xff8f3fe8);
  static const secondary = Color(0xff2d60f0);

  // misc
  static const info = Color(0xffe47f4b);
  static const error = Color(0xffda6f69);
  static const success = Color(0xff328753);
  static const warning = Color(0xffb18a44);
}

sealed class AppColorsLight {
  // bgs
  static const cardBg = Color(0xfffcfdff);
  static const appBg = Color(0xffeef5ff);
  static const shadow = Color(0xffd2d6de);
  static const lightStroke = Color(0xffD2D2D2);

  // texts
  static const textHeading = Color(0xff242936);
  static const textBody = Color(0xff242936);
  static const textDim = Color(0xff9da0a5);
}

sealed class AppColorsDark {
  // bgs
  static const cardBg = Color(0xff13161A);
  static const appBg = Color(0xff020612);
  static const shadow = Colors.black12;
  static const lightStroke = Color.fromARGB(255, 91, 91, 91);

  // texts
  static const textHeading = Color(0xffCDC8C2);
  static const textBody = Color(0xffB1AAA0);
  static const textDim = Color(0xff9A9185);
}
