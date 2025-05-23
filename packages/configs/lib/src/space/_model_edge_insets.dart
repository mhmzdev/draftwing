part of '../configs_base.dart';

/// [_SpaceModelEdgeInsets] is a class that contains the edge insets for the space.
/// All kind of [Padding] and [Margin] related values are powered by this class.
///
/// [Padding] as class [EdgeInsets] so this model class returns the [EdgeInsets] values
/// that could be using anywhere padding or margins.
class _SpaceModelEdgeInsets {
  final EdgeInsets t04;
  final EdgeInsets t08;
  final EdgeInsets t12;
  final EdgeInsets t16;
  final EdgeInsets t20;
  final EdgeInsets t24;
  final EdgeInsets t28;
  final EdgeInsets t32;
  final EdgeInsets t60;
  final EdgeInsets t100;

  _SpaceModelEdgeInsets({
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
