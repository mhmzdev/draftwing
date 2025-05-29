part of '../configs.dart';

extension MapExtension on Map {
  T? getValue<T>(String keyFragment) {
    final key = keys.firstWhere(
      (k) => k.contains(keyFragment),
      orElse: () => '',
    );

    if (key.isEmpty) return null;

    final field = this[key];
    return field?.value as T?;
  }
}
