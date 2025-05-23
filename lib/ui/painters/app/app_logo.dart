import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class AppLogoPainter extends CustomPainter {
  const AppLogoPainter();

  static Size s(double value) => Size(value, value);

  @override
  void paint(Canvas canvas, Size size) {
    final paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.shader = ui.Gradient.linear(
      Offset(size.width, 0),
      Offset(0, size.height),
      [const Color(0xff3F50EA), const Color(0xff8413D3)],
      [0.1, 1.0],
    );
    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), paint0Fill);

    final path_1 = Path();
    path_1.moveTo(size.width * 0.3502217, size.height * 0.5946416);
    path_1.lineTo(size.width * 0.6207451, size.height * 0.3273389);
    path_1.cubicTo(
      size.width * 0.6373848,
      size.height * 0.3225078,
      size.width * 0.6577812,
      size.height * 0.3375371,
      size.width * 0.6524131,
      size.height * 0.3579336,
    );
    path_1.lineTo(size.width * 0.6448984, size.height * 0.3681318);
    path_1.lineTo(size.width * 0.3894053, size.height * 0.6295303);
    path_1.lineTo(size.width * 0.3904785, size.height * 0.6300674);
    path_1.cubicTo(
      size.width * 0.4130225,
      size.height * 0.6375811,
      size.width * 0.4661602,
      size.height * 0.6574414,
      size.width * 0.5788779,
      size.height * 0.5946416,
    );
    path_1.lineTo(size.width * 0.6105469, size.height * 0.5720977);
    path_1.lineTo(size.width * 0.6588545, size.height * 0.5296943);
    path_1.cubicTo(
      size.width * 0.6717363,
      size.height * 0.5168125,
      size.width * 0.6953535,
      size.height * 0.4969521,
      size.width * 0.6760303,
      size.height * 0.4921221,
    );
    path_1.lineTo(size.width * 0.6695898, size.height * 0.4921221);
    path_1.cubicTo(
      size.width * 0.6502666,
      size.height * 0.4867539,
      size.width * 0.6347002,
      size.height * 0.4803135,
      size.width * 0.6320166,
      size.height * 0.4711885,
    );
    path_1.lineTo(size.width * 0.6427520, size.height * 0.4695781);
    path_1.lineTo(size.width * 0.6899863, size.height * 0.4615264);
    path_1.cubicTo(
      size.width * 0.7211172,
      size.height * 0.4561592,
      size.width * 0.7828437,
      size.height * 0.4293213,
      size.width * 0.8037773,
      size.height * 0.3912119,
    );
    path_1.lineTo(size.width * 0.8134385, size.height * 0.3756465);
    path_1.lineTo(size.width * 0.8209531, size.height * 0.3590068);
    path_1.lineTo(size.width * 0.8231006, size.height * 0.3514932);
    path_1.lineTo(size.width * 0.8263213, size.height * 0.3391475);
    path_1.lineTo(size.width * 0.8279316, size.height * 0.3284121);
    path_1.lineTo(size.width * 0.8295420, size.height * 0.3128467);
    path_1.lineTo(size.width * 0.8295420, size.height * 0.3031846);
    path_1.lineTo(size.width * 0.8300781, size.height * 0.2913770);
    path_1.lineTo(size.width * 0.8295420, size.height * 0.2768838);
    path_1.lineTo(size.width * 0.8279316, size.height * 0.2629287);
    path_1.lineTo(size.width * 0.8263213, size.height * 0.2516572);
    path_1.lineTo(size.width * 0.8236377, size.height * 0.2387744);
    path_1.lineTo(size.width * 0.8209531, size.height * 0.2264297);
    path_1.lineTo(size.width * 0.8171963, size.height * 0.2135479);
    path_1.lineTo(size.width * 0.8107549, size.height * 0.1963711);
    path_1.cubicTo(
      size.width * 0.8096816,
      size.height * 0.1929717,
      size.width * 0.8059248,
      size.height * 0.1872471,
      size.width * 0.8005566,
      size.height * 0.1910039,
    );
    path_1.lineTo(size.width * 0.7973359, size.height * 0.1931514);
    path_1.lineTo(size.width * 0.7930420, size.height * 0.1963711);
    path_1.lineTo(size.width * 0.7860645, size.height * 0.2028125);
    path_1.lineTo(size.width * 0.7774766, size.height * 0.2114004);
    path_1.lineTo(size.width * 0.7662051, size.height * 0.2205254);
    path_1.lineTo(size.width * 0.7581533, size.height * 0.2264297);
    path_1.lineTo(size.width * 0.7511758, size.height * 0.2307236);
    path_1.lineTo(size.width * 0.7474189, size.height * 0.2328711);
    path_1.lineTo(size.width * 0.7425879, size.height * 0.2355547);
    path_1.lineTo(size.width * 0.7388301, size.height * 0.2377012);
    path_1.lineTo(size.width * 0.7307793, size.height * 0.2409219);
    path_1.lineTo(size.width * 0.7189707, size.height * 0.2457529);
    path_1.lineTo(size.width * 0.7039414, size.height * 0.2505830);
    path_1.lineTo(size.width * 0.6803242, size.height * 0.2564873);
    path_1.lineTo(size.width * 0.6481191, size.height * 0.2640020);
    path_1.lineTo(size.width * 0.6196719, size.height * 0.2699063);
    path_1.lineTo(size.width * 0.5992754, size.height * 0.2742002);
    path_1.lineTo(size.width * 0.5788779, size.height * 0.2795684);
    path_1.lineTo(size.width * 0.5584814, size.height * 0.2865459);
    path_1.lineTo(size.width * 0.5348643, size.height * 0.2972812);
    path_1.lineTo(size.width * 0.5278867, size.height * 0.3010381);
    path_1.lineTo(size.width * 0.5171523, size.height * 0.3074795);
    path_1.lineTo(size.width * 0.5091006, size.height * 0.3139199);
    path_1.lineTo(size.width * 0.5005127, size.height * 0.3225078);
    path_1.lineTo(size.width * 0.4924609, size.height * 0.3305596);
    path_1.lineTo(size.width * 0.4838730, size.height * 0.3391475);
    path_1.lineTo(size.width * 0.4811895, size.height * 0.3423682);
    path_1.lineTo(size.width * 0.4768955, size.height * 0.3488086);
    path_1.lineTo(size.width * 0.4693809, size.height * 0.3616914);
    path_1.lineTo(size.width * 0.4656240, size.height * 0.3692061);
    path_1.lineTo(size.width * 0.4602559, size.height * 0.3804775);
    path_1.lineTo(size.width * 0.4522051, size.height * 0.4014111);
    path_1.lineTo(size.width * 0.4505947, size.height * 0.4067783);
    path_1.lineTo(size.width * 0.4489844, size.height * 0.4116094);
    path_1.lineTo(size.width * 0.4436172, size.height * 0.4330791);
    path_1.cubicTo(
      size.width * 0.4418281,
      size.height * 0.4447090,
      size.width * 0.4409336,
      size.height * 0.4529385,
      size.width * 0.4344922,
      size.height * 0.4405938,
    );
    path_1.lineTo(size.width * 0.4328818, size.height * 0.4303955);
    path_1.lineTo(size.width * 0.4328818, size.height * 0.3697422);
    path_1.lineTo(size.width * 0.4216104, size.height * 0.3692061);
    path_1.cubicTo(
      size.width * 0.3920889,
      size.height * 0.4019473,
      size.width * 0.3378770,
      size.height * 0.4679678,
      size.width * 0.3378770,
      size.height * 0.5527744,
    );
    path_1.lineTo(size.width * 0.3502217, size.height * 0.5946416);
    path_1.close();

    final paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = Colors.white.withValues(alpha: 1.0);
    canvas.drawPath(path_1, paint1Fill);

    final path_2 = Path();
    path_2.moveTo(size.width * 0.1704102, size.height * 0.8018281);
    path_2.cubicTo(
      size.width * 0.1713047,
      size.height * 0.8048701,
      size.width * 0.1741670,
      size.height * 0.8104160,
      size.width * 0.1789980,
      size.height * 0.8098789,
    );
    path_2.lineTo(size.width * 0.2063721, size.height * 0.7846523);
    path_2.lineTo(size.width * 0.2514600, size.height * 0.7406387);
    path_2.lineTo(size.width * 0.3029883, size.height * 0.6896475);
    path_2.lineTo(size.width * 0.3818906, size.height * 0.6107441);
    path_2.lineTo(size.width * 0.4715283, size.height * 0.5211074);
    path_2.lineTo(size.width * 0.5600918, size.height * 0.4320059);
    path_2.lineTo(size.width * 0.5955176, size.height * 0.3960439);
    path_2.lineTo(size.width * 0.6282598, size.height * 0.3622285);
    path_2.lineTo(size.width * 0.6373838, size.height * 0.3525664);
    path_2.lineTo(size.width * 0.6373838, size.height * 0.3520303);
    path_2.cubicTo(
      size.width * 0.6359531,
      size.height * 0.3480937,
      size.width * 0.6368477,
      size.height * 0.3450527,
      size.width * 0.6277227,
      size.height * 0.3423682,
    );
    path_2.lineTo(size.width * 0.6245020, size.height * 0.3450527);
    path_2.lineTo(size.width * 0.6041055, size.height * 0.3649121);
    path_2.lineTo(size.width * 0.5799521, size.height * 0.3885293);
    path_2.lineTo(size.width * 0.5574082, size.height * 0.4105361);
    path_2.lineTo(size.width * 0.5364746, size.height * 0.4314697);
    path_2.lineTo(size.width * 0.5182256, size.height * 0.4491826);
    path_2.lineTo(size.width * 0.4972920, size.height * 0.4701152);
    path_2.lineTo(size.width * 0.4768955, size.height * 0.4905117);
    path_2.lineTo(size.width * 0.4656240, size.height * 0.5017842);
    path_2.lineTo(size.width * 0.4500576, size.height * 0.5168125);
    path_2.lineTo(size.width * 0.4344922, size.height * 0.5323789);
    path_2.lineTo(size.width * 0.4200000, size.height * 0.5468711);
    path_2.lineTo(size.width * 0.4049707, size.height * 0.5619004);
    path_2.lineTo(size.width * 0.3872578, size.height * 0.5796133);
    path_2.lineTo(size.width * 0.3673984, size.height * 0.5994727);
    path_2.lineTo(size.width * 0.3470020, size.height * 0.6198691);
    path_2.lineTo(size.width * 0.3260684, size.height * 0.6413389);
    path_2.lineTo(size.width * 0.3099658, size.height * 0.6574414);
    path_2.lineTo(size.width * 0.2938633, size.height * 0.6730078);
    path_2.lineTo(size.width * 0.2761504, size.height * 0.6912568);
    path_2.lineTo(size.width * 0.2584375, size.height * 0.7089697);
    path_2.lineTo(size.width * 0.2401875, size.height * 0.7272197);
    path_2.lineTo(size.width * 0.2235488, size.height * 0.7438594);
    path_2.lineTo(size.width * 0.2036885, size.height * 0.7642559);
    path_2.lineTo(size.width * 0.1843652, size.height * 0.7841152);
    path_2.lineTo(size.width * 0.1709473, size.height * 0.7980713);
    path_2.lineTo(size.width * 0.1704102, size.height * 0.8018281);
    path_2.close();

    final paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = Colors.white.withValues(alpha: 1.0);
    canvas.drawPath(path_2, paint2Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
