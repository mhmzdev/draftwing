part of '../configs_base.dart';

extension SuperInt on int {
  BorderRadius radius() => BorderRadius.circular(toDouble());
  BorderRadius top() => BorderRadius.vertical(top: Radius.circular(toDouble()));
  BorderRadius bottom() =>
      BorderRadius.vertical(bottom: Radius.circular(toDouble()));

  String formatHHMM([bool short = false]) {
    var minutes = this;
    final hours = (minutes / 60).truncate();
    minutes = (minutes % 60).truncate();

    final hoursStr = (hours).toString().padLeft(2, '0');
    final minutesStr = (minutes).toString().padLeft(2, '0');

    if (hours == 0) {
      if (!short) {
        return '$minutesStr mins';
      }
      return '${minutesStr}m';
    }

    if (!short) {
      return '$hoursStr hr $minutesStr mins';
    }
    return '${hoursStr}h ${minutesStr}m';
  }
}
