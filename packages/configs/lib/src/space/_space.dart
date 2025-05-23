// ignore_for_file: library_private_types_in_public_api

part of '../configs_base.dart';

/// [Space] is a class that contains the space for the app.
/// It is a singleton class that contains all the space related values.
///
/// It is used to give space in terms of padding, margins, horizontal and vertical space.
///
/// [_SpaceModelWidget] x is used to give horizontal space i.e. in Row direction.
/// [_SpaceModelWidget] y is used to give vertical space i.e. in Column direction.
///
/// [_SpaceModelEdgeInsets] is used to give space in terms of [EdgeInsets].
/// Where each label refers to:
/// - a: all
/// - h: horizontal
/// - v: vertical
/// - t: top
/// - r: right
/// - b: bottom
/// - l: left
/// - z: zero
///
/// Further, we have [SuperEdgeInsets] extension on [EdgeInsets] that lets you modify
/// these spaces with ease. Such as, getting bottom safe area inset with [Space.z.sb].
class Space {
  static late _SpaceModelWidget x;
  static late _SpaceModelWidget y;
  static late Widget ym;
  static late Widget xm;

  static late _SpaceModelEdgeInsets a;
  static late _SpaceModelEdgeInsets h;
  static late _SpaceModelEdgeInsets v;
  static late _SpaceModelEdgeInsets t;
  static late _SpaceModelEdgeInsets r;
  static late _SpaceModelEdgeInsets b;
  static late _SpaceModelEdgeInsets l;
  static const EdgeInsets z = EdgeInsets.zero;

  static late Widget top;
  static late Widget bottom;

  static void init() {
    SpaceToken.init();

    x = _x();
    y = _y();

    ym = const Expanded(child: SizedBox(height: double.infinity));
    xm = const Expanded(child: SizedBox(width: double.infinity));

    a = _a();
    h = _h();
    v = _v();
    t = _t();
    r = _r();
    b = _b();
    l = _l();

    top = SizedBox(height: AppMedia.padding.top);
    bottom = SizedBox(height: AppMedia.padding.bottom);
  }

  static Widget yf(double y) => SizedBox(height: y);
  static Widget xf(double x) => SizedBox(width: x);

  static EdgeInsets sym([double? h, double? v]) {
    final u = SpaceToken.t16;
    return EdgeInsets.symmetric(vertical: v ?? u, horizontal: h ?? u);
  }

  static EdgeInsets only([double? t, double? r, double? b, double? l]) {
    const u = 0.0;
    return EdgeInsets.only(
      top: t ?? u,
      right: r ?? u,
      bottom: b ?? u,
      left: l ?? u,
    );
  }
}
