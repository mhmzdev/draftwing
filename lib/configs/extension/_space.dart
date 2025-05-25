part of '../configs.dart';

extension SuperEdgeInsets on EdgeInsets {
  EdgeInsets st([num plus = 0, bool un = false]) {
    final base = top + AppMedia.padding.top;
    return copyWith(top: base + (un ? plus : plus.toDouble()));
  }

  EdgeInsets sb([num plus = 0, bool un = false]) {
    final base = bottom + AppMedia.padding.bottom;
    return copyWith(bottom: base + (un ? plus : plus.toDouble()));
  }

  EdgeInsets h(double no, [bool un = false]) {
    final val = un ? no : no.toDouble();
    return copyWith(top: val, bottom: val);
  }

  EdgeInsets v(double no, [bool un = false]) {
    final val = un ? no : no.toDouble();
    return copyWith(top: val, bottom: val);
  }

  EdgeInsets b(double no, [bool un = false]) {
    return copyWith(bottom: un ? no : no.toDouble());
  }

  EdgeInsets t(double no, [bool un = false]) {
    return copyWith(top: un ? no : no.toDouble());
  }

  EdgeInsets l(double no, [bool un = false]) {
    return copyWith(left: un ? no : no.toDouble());
  }

  EdgeInsets r(double no, [bool un = false]) {
    return copyWith(right: un ? no : no.toDouble());
  }
}
