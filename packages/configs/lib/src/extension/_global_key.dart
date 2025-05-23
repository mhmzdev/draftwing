part of '../configs_base.dart';

extension WidgetSizeExtension on GlobalKey {
  double? get widgetHeight {
    final renderBox = currentContext?.findRenderObject() as RenderBox?;
    return renderBox?.size.height;
  }
}
