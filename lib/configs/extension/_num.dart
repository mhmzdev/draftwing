part of '../configs.dart';

extension SuperNum on num {
  String get currency => '\$${toStringAsFixed(2)}';
}
