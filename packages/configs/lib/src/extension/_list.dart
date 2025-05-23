part of '../configs_base.dart';

extension ListExt on List? {
  bool get available => this != null && this!.isNotEmpty;
}

extension NullableEnumListExtension<T> on List<T>? {
  bool get isAvailable => this != null && this!.isNotEmpty;
}

extension MapExt on Map? {
  bool get isAvailable => this != null && this!.isNotEmpty;
}

extension MapListExt on Map {
  bool get isAvailable => isNotEmpty;
}

extension FirstWhereOrNull<T> on Iterable<T> {
  T? firstWhereOrNull(bool Function(T) test) {
    try {
      return firstWhere(test);
    } catch (e) {
      return null;
    }
  }
}
