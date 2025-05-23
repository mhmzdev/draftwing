part of '../configs_base.dart';

/// [SpaceToken] is a class that contains the tokens for the space.
/// Any space related value is powered by this class. Its actually the
/// base class for all the space related values.
///
/// Such as horizontal padding, vertical padding, etc.
class SpaceToken {
  static late double t00;
  static late double t04;
  static late double t08;
  static late double t12;
  static late double t16;
  static late double t20;
  static late double t24;
  static late double t28;
  static late double t32;
  static late double t60;
  static late double t100;

  static void init() {
    t00 = 0;
    t04 = 4;
    t08 = 8;
    t12 = 12;
    t16 = 16;
    t20 = 20;
    t24 = 24;
    t28 = 28;
    t32 = 32;
    t60 = 60;
    t100 = 100;
  }
}
