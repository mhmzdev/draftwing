part of '../configs.dart';

extension EnumExtension<T extends Enum> on List<T> {
  T get randomValue => this[Random().nextInt(length)];
}
