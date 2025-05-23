part of '../configs_base.dart';

sealed class AppColors {
  static const white = Color.fromRGBO(255, 255, 255, 1);

  // brandings
  static const primary = Color(0xff92C700);
  static const secondary = Color(0xffEC6600);

  // bgs
  static const cardBg = Color(0xffFFFFFF);
  static const appBg = Color(0xffF9F9F9);
  static const shadow = Color(0xffE0E0E0);
  static const lightStroke = Color(0xffD2D2D2);

  // texts
  static const textHeading = Color(0xff515151);
  static const textBody = Color(0xff777777);
  static const textDim = Color(0xffAFAFAF);

  // misc
  static const info = Color(0xff2196F3);
  static const error = Color(0xffF44336);
  static const success = Color(0xff3BC340);
  static const warning = Color(0xffFFA91F);
}

sealed class AppColorsDark {
  // brandings
  static const secondary = Color(0xffFF892F);

  // bgs
  static const cardBg = Color(0xff505050);
  static const appBg = Color(0xff454545);
  static const shadow = Colors.black12;
  static const lightStroke = Color.fromARGB(255, 91, 91, 91);

  // texts
  static const textHeading = Color(0xffF8F8F8);
  static const textBody = Color(0xffDADADA);
  static const textDim = Color(0xff909090);

  // misc
  static const info = Color(0xff5AA6E2);
  static const error = Color(0xffE55349);
  static const success = Color(0xff5DC561);
  static const warning = Color(0xffE6B058);
}
