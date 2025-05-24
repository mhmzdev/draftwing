part of '../configs_base.dart';

extension EnumExtension<T extends Enum> on List<T> {
  T get randomValue => this[Random().nextInt(length)];
}
