part of '../painters.dart';

class FeatherPainter extends CustomPainter {
  const FeatherPainter({this.color});
  final Color? color;

  static Size s(double value) => Size(value, value);

  @override
  void paint(Canvas canvas, Size size) {
    final path_0 = Path();
    path_0.moveTo(size.width * 0.2723772, size.height * 0.6518648);
    path_0.lineTo(size.width * 0.6821642, size.height * 0.2214906);
    path_0.cubicTo(
      size.width * 0.7073698,
      size.height * 0.2137123,
      size.width * 0.7382663,
      size.height * 0.2379104,
      size.width * 0.7301346,
      size.height * 0.2707500,
    );
    path_0.lineTo(size.width * 0.7187515, size.height * 0.2871698);
    path_0.lineTo(size.width * 0.3317322, size.height * 0.7080377);
    path_0.lineTo(size.width * 0.3333580, size.height * 0.7089009);
    path_0.cubicTo(
      size.width * 0.3675074,
      size.height * 0.7210000,
      size.width * 0.4480000,
      size.height * 0.7529764,
      size.width * 0.6187441,
      size.height * 0.6518648,
    );
    path_0.lineTo(size.width * 0.6667160, size.height * 0.6155676);
    path_0.lineTo(size.width * 0.7398920, size.height * 0.5472956);
    path_0.cubicTo(
      size.width * 0.7594053,
      size.height * 0.5265550,
      size.width * 0.7951805,
      size.height * 0.4945786,
      size.width * 0.7659098,
      size.height * 0.4868003,
    );
    path_0.lineTo(size.width * 0.7561538, size.height * 0.4868003);
    path_0.cubicTo(
      size.width * 0.7268831,
      size.height * 0.4781588,
      size.width * 0.7033033,
      size.height * 0.4677893,
      size.width * 0.6992382,
      size.height * 0.4530975,
    );
    path_0.lineTo(size.width * 0.7155000, size.height * 0.4505047);
    path_0.lineTo(size.width * 0.7870503, size.height * 0.4375409);
    path_0.cubicTo(
      size.width * 0.8342071,
      size.height * 0.4288994,
      size.width * 0.9277101,
      size.height * 0.3856887,
      size.width * 0.9594201,
      size.height * 0.3243302,
    );
    path_0.lineTo(size.width * 0.9740547, size.height * 0.2992689);
    path_0.lineTo(size.width * 0.9854379, size.height * 0.2724780);
    path_0.lineTo(size.width * 0.9886908, size.height * 0.2603789);
    path_0.lineTo(size.width * 0.9935695, size.height * 0.2405031);
    path_0.lineTo(size.width * 0.9960089, size.height * 0.2232186);
    path_0.lineTo(size.width * 0.9984482, size.height * 0.1981572);
    path_0.lineTo(size.width * 0.9984482, size.height * 0.1826006);
    path_0.lineTo(size.width * 0.9992604, size.height * 0.1635881);
    path_0.lineTo(size.width * 0.9984482, size.height * 0.1402552);
    path_0.lineTo(size.width * 0.9960089, size.height * 0.1177858);
    path_0.lineTo(size.width * 0.9935695, size.height * 0.09963758);
    path_0.lineTo(size.width * 0.9895044, size.height * 0.07889654);
    path_0.lineTo(size.width * 0.9854379, size.height * 0.05901997);
    path_0.lineTo(size.width * 0.9797470, size.height * 0.03827909);
    path_0.lineTo(size.width * 0.9699896, size.height * 0.01062464);
    path_0.cubicTo(
      size.width * 0.9683639,
      size.height * 0.005151352,
      size.width * 0.9626731,
      size.height * -0.004066997,
      size.width * 0.9545414,
      size.height * 0.001982594,
    );
    path_0.lineTo(size.width * 0.9496627, size.height * 0.005439418);
    path_0.lineTo(size.width * 0.9431583, size.height * 0.01062464);
    path_0.lineTo(size.width * 0.9325888, size.height * 0.02099513);
    path_0.lineTo(size.width * 0.9195799, size.height * 0.03482233);
    path_0.lineTo(size.width * 0.9025059, size.height * 0.04951384);
    path_0.lineTo(size.width * 0.8903092, size.height * 0.05902013);
    path_0.lineTo(size.width * 0.8797396, size.height * 0.06593365);
    path_0.lineTo(size.width * 0.8740488, size.height * 0.06939057);
    path_0.lineTo(size.width * 0.8667308, size.height * 0.07371164);
    path_0.lineTo(size.width * 0.8610385, size.height * 0.07716840);
    path_0.lineTo(size.width * 0.8488432, size.height * 0.08235362);
    path_0.lineTo(size.width * 0.8309556, size.height * 0.09013145);
    path_0.lineTo(size.width * 0.8081893, size.height * 0.09790928);
    path_0.lineTo(size.width * 0.7724142, size.height * 0.1074156);
    path_0.lineTo(size.width * 0.7236302, size.height * 0.1195145);
    path_0.lineTo(size.width * 0.6805385, size.height * 0.1290206);
    path_0.lineTo(size.width * 0.6496420, size.height * 0.1359343);
    path_0.lineTo(size.width * 0.6187441, size.height * 0.1445763);
    path_0.lineTo(size.width * 0.5878476, size.height * 0.1558110);
    path_0.lineTo(size.width * 0.5520725, size.height * 0.1730943);
    path_0.lineTo(size.width * 0.5415030, size.height * 0.1791447);
    path_0.lineTo(size.width * 0.5252426, size.height * 0.1895157);
    path_0.lineTo(size.width * 0.5130459, size.height * 0.1998852);
    path_0.lineTo(size.width * 0.5000370, size.height * 0.2137123);
    path_0.lineTo(size.width * 0.4878402, size.height * 0.2266761);
    path_0.lineTo(size.width * 0.4748314, size.height * 0.2405031);
    path_0.lineTo(size.width * 0.4707663, size.height * 0.2456887);
    path_0.lineTo(size.width * 0.4642618, size.height * 0.2560582);
    path_0.lineTo(size.width * 0.4528787, size.height * 0.2768003);
    path_0.lineTo(size.width * 0.4471879, size.height * 0.2888978);
    path_0.lineTo(size.width * 0.4390562, size.height * 0.3070472);
    path_0.lineTo(size.width * 0.4268609, size.height * 0.3407500);
    path_0.lineTo(size.width * 0.4244216, size.height * 0.3493931);
    path_0.lineTo(size.width * 0.4219822, size.height * 0.3571698);
    path_0.lineTo(size.width * 0.4138521, size.height * 0.3917390);
    path_0.cubicTo(
      size.width * 0.4111420,
      size.height * 0.4104638,
      size.width * 0.4097870,
      size.height * 0.4237138,
      size.width * 0.4000296,
      size.height * 0.4038381,
    );
    path_0.lineTo(size.width * 0.3975902, size.height * 0.3874182);
    path_0.lineTo(size.width * 0.3975902, size.height * 0.2897626);
    path_0.lineTo(size.width * 0.3805163, size.height * 0.2888978);
    path_0.cubicTo(
      size.width * 0.3357973,
      size.height * 0.3416148,
      size.width * 0.2536775,
      size.height * 0.4479119,
      size.width * 0.2536775,
      size.height * 0.5844560,
    );
    path_0.lineTo(size.width * 0.2723772, size.height * 0.6518648);
    path_0.close();

    final paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = color ?? AppTheme.c.appBg.withValues(alpha: 1.0);
    canvas.drawPath(path_0, paint0Fill);

    final path_1 = Path();
    path_1.moveTo(0, size.height * 0.9854481);
    path_1.cubicTo(
      size.width * 0.001355112,
      size.height * 0.9903443,
      size.width * 0.005691479,
      size.height * 0.9992752,
      size.width * 0.01300908,
      size.height * 0.9984104,
    );
    path_1.lineTo(size.width * 0.05447559, size.height * 0.9577940);
    path_1.lineTo(size.width * 0.1227732, size.height * 0.8869292);
    path_1.lineTo(size.width * 0.2008284, size.height * 0.8048286);
    path_1.lineTo(size.width * 0.3203491, size.height * 0.6777909);
    path_1.lineTo(size.width * 0.4561317, size.height * 0.5334686);
    path_1.lineTo(size.width * 0.5902870, size.height * 0.3900110);
    path_1.lineTo(size.width * 0.6439497, size.height * 0.3321101);
    path_1.lineTo(size.width * 0.6935473, size.height * 0.2776651);
    path_1.lineTo(size.width * 0.7073683, size.height * 0.2621085);
    path_1.lineTo(size.width * 0.7073683, size.height * 0.2612453);
    path_1.cubicTo(
      size.width * 0.7052012,
      size.height * 0.2549072,
      size.width * 0.7065562,
      size.height * 0.2500094,
      size.width * 0.6927337,
      size.height * 0.2456887,
    );
    path_1.lineTo(size.width * 0.6878550, size.height * 0.2500094);
    path_1.lineTo(size.width * 0.6569586, size.height * 0.2819858);
    path_1.lineTo(size.width * 0.6203713, size.height * 0.3200110);
    path_1.lineTo(size.width * 0.5862219, size.height * 0.3554434);
    path_1.lineTo(size.width * 0.5545118, size.height * 0.3891478);
    path_1.lineTo(size.width * 0.5268683, size.height * 0.4176651);
    path_1.lineTo(size.width * 0.4951583, size.height * 0.4513695);
    path_1.lineTo(size.width * 0.4642618, size.height * 0.4842091);
    path_1.lineTo(size.width * 0.4471879, size.height * 0.5023585);
    path_1.lineTo(size.width * 0.4236080, size.height * 0.5265550);
    path_1.lineTo(size.width * 0.4000296, size.height * 0.5516179);
    path_1.lineTo(size.width * 0.3780769, size.height * 0.5749513);
    path_1.lineTo(size.width * 0.3553107, size.height * 0.5991494);
    path_1.lineTo(size.width * 0.3284793, size.height * 0.6276667);
    path_1.lineTo(size.width * 0.2983964, size.height * 0.6596431);
    path_1.lineTo(size.width * 0.2675000, size.height * 0.6924827);
    path_1.lineTo(size.width * 0.2357899, size.height * 0.7270503);
    path_1.lineTo(size.width * 0.2113979, size.height * 0.7529764);
    path_1.lineTo(size.width * 0.1870059, size.height * 0.7780393);
    path_1.lineTo(size.width * 0.1601746, size.height * 0.8074214);
    path_1.lineTo(size.width * 0.1333432, size.height * 0.8359403);
    path_1.lineTo(size.width * 0.1056988, size.height * 0.8653239);
    path_1.lineTo(size.width * 0.08049379, size.height * 0.8921132);
    path_1.lineTo(size.width * 0.05041021, size.height * 0.9249528);
    path_1.lineTo(size.width * 0.02113979, size.height * 0.9569292);
    path_1.lineTo(size.width * 0.0008130680, size.height * 0.9793978);
    path_1.lineTo(0, size.height * 0.9854481);
    path_1.close();

    final paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = color ?? AppTheme.c.appBg.withValues(alpha: 1.0);
    canvas.drawPath(path_1, paint1Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
