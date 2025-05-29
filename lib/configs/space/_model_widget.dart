part of '../configs.dart';

/// We use [SizedBox] for all the space related values.
/// So this model class returns the [SizedBox] values that could be using anywhere
/// where you need to give vertical or horizontal space.
class _SpaceModelWidget {
  final Widget t04;
  final Widget t08;
  final Widget t12;
  final Widget t16;
  final Widget t20;
  final Widget t24;
  final Widget t28;
  final Widget t32;
  final Widget t60;
  final Widget t100;

  _SpaceModelWidget({
    required this.t04,
    required this.t08,
    required this.t12,
    required this.t16,
    required this.t20,
    required this.t24,
    required this.t28,
    required this.t32,
    required this.t60,
    required this.t100,
  });
}
