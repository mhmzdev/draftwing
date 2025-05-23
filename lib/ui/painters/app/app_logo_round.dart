part of '../painters.dart';

class AppLogoRoundPainter extends CustomPainter {
  const AppLogoRoundPainter();

  static Size s(double value) => Size(value, value);

  @override
  void paint(Canvas canvas, Size size) {
    final paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.shader = ui.Gradient.linear(
      Offset(size.width * 0.8100586, size.height * 0.1025391),
      Offset(size.width * 0.1538086, size.height * 0.8588867),
      [
        const Color(0xff3F50EA).withValues(alpha: 1),
        const Color(0xff8413D3).withValues(alpha: 1),
      ],
      [0, 1],
    );
    canvas.drawRRect(
      RRect.fromRectAndCorners(
        Rect.fromLTWH(0, 0, size.width, size.height),
        bottomRight: Radius.circular(size.width * 0.5000000),
        bottomLeft: Radius.circular(size.width * 0.5000000),
        topLeft: Radius.circular(size.width * 0.5000000),
        topRight: Radius.circular(size.width * 0.5000000),
      ),
      paint0Fill,
    );

    final path_1 = Path();
    path_1.moveTo(size.width * 0.3684951, size.height * 0.5830947);
    path_1.lineTo(size.width * 0.6060684, size.height * 0.3483496);
    path_1.cubicTo(
      size.width * 0.6206807,
      size.height * 0.3441074,
      size.width * 0.6385928,
      size.height * 0.3573057,
      size.width * 0.6338799,
      size.height * 0.3752187,
    );
    path_1.lineTo(size.width * 0.6272803, size.height * 0.3841748);
    path_1.lineTo(size.width * 0.4029053, size.height * 0.6137344);
    path_1.lineTo(size.width * 0.4038477, size.height * 0.6142061);
    path_1.cubicTo(
      size.width * 0.4236455,
      size.height * 0.6208047,
      size.width * 0.4703115,
      size.height * 0.6382461,
      size.width * 0.5693008,
      size.height * 0.5830947,
    );
    path_1.lineTo(size.width * 0.5971123, size.height * 0.5632969);
    path_1.lineTo(size.width * 0.6395361, size.height * 0.5260586);
    path_1.cubicTo(
      size.width * 0.6508486,
      size.height * 0.5147451,
      size.width * 0.6715898,
      size.height * 0.4973047,
      size.width * 0.6546201,
      size.height * 0.4930625,
    );
    path_1.lineTo(size.width * 0.6489639, size.height * 0.4930625);
    path_1.cubicTo(
      size.width * 0.6319941,
      size.height * 0.4883486,
      size.width * 0.6183242,
      size.height * 0.4826924,
      size.width * 0.6159668,
      size.height * 0.4746787,
    );
    path_1.lineTo(size.width * 0.6253945, size.height * 0.4732646);
    path_1.lineTo(size.width * 0.6668760, size.height * 0.4661934);
    path_1.cubicTo(
      size.width * 0.6942158,
      size.height * 0.4614805,
      size.width * 0.7484238,
      size.height * 0.4379111,
      size.width * 0.7668076,
      size.height * 0.4044434,
    );
    path_1.lineTo(size.width * 0.7752920, size.height * 0.3907734);
    path_1.lineTo(size.width * 0.7818916, size.height * 0.3761611);
    path_1.lineTo(size.width * 0.7837773, size.height * 0.3695615);
    path_1.lineTo(size.width * 0.7866055, size.height * 0.3587197);
    path_1.lineTo(size.width * 0.7880195, size.height * 0.3492930);
    path_1.lineTo(size.width * 0.7894336, size.height * 0.3356230);
    path_1.lineTo(size.width * 0.7894336, size.height * 0.3271377);
    path_1.lineTo(size.width * 0.7899053, size.height * 0.3167676);
    path_1.lineTo(size.width * 0.7894336, size.height * 0.3040400);
    path_1.lineTo(size.width * 0.7880195, size.height * 0.2917852);
    path_1.lineTo(size.width * 0.7866055, size.height * 0.2818857);
    path_1.lineTo(size.width * 0.7842480, size.height * 0.2705732);
    path_1.lineTo(size.width * 0.7818916, size.height * 0.2597314);
    path_1.lineTo(size.width * 0.7785918, size.height * 0.2484180);
    path_1.lineTo(size.width * 0.7729355, size.height * 0.2333340);
    path_1.cubicTo(
      size.width * 0.7719922,
      size.height * 0.2303486,
      size.width * 0.7686934,
      size.height * 0.2253203,
      size.width * 0.7639795,
      size.height * 0.2286201,
    );
    path_1.lineTo(size.width * 0.7611514, size.height * 0.2305059);
    path_1.lineTo(size.width * 0.7573799, size.height * 0.2333340);
    path_1.lineTo(size.width * 0.7512520, size.height * 0.2389912);
    path_1.lineTo(size.width * 0.7437100, size.height * 0.2465332);
    path_1.lineTo(size.width * 0.7338115, size.height * 0.2545459);
    path_1.lineTo(size.width * 0.7267402, size.height * 0.2597314);
    path_1.lineTo(size.width * 0.7206123, size.height * 0.2635020);
    path_1.lineTo(size.width * 0.7173125, size.height * 0.2653877);
    path_1.lineTo(size.width * 0.7130703, size.height * 0.2677451);
    path_1.lineTo(size.width * 0.7097705, size.height * 0.2696299);
    path_1.lineTo(size.width * 0.7027002, size.height * 0.2724580);
    path_1.lineTo(size.width * 0.6923301, size.height * 0.2767012);
    path_1.lineTo(size.width * 0.6791318, size.height * 0.2809434);
    path_1.lineTo(size.width * 0.6583906, size.height * 0.2861279);
    path_1.lineTo(size.width * 0.6301084, size.height * 0.2927275);
    path_1.lineTo(size.width * 0.6051260, size.height * 0.2979131);
    path_1.lineTo(size.width * 0.5872129, size.height * 0.3016836);
    path_1.lineTo(size.width * 0.5693008, size.height * 0.3063975);
    path_1.lineTo(size.width * 0.5513887, size.height * 0.3125254);
    path_1.lineTo(size.width * 0.5306484, size.height * 0.3219531);
    path_1.lineTo(size.width * 0.5245205, size.height * 0.3252529);
    path_1.lineTo(size.width * 0.5150928, size.height * 0.3309092);
    path_1.lineTo(size.width * 0.5080225, size.height * 0.3365654);
    path_1.lineTo(size.width * 0.5004805, size.height * 0.3441074);
    path_1.lineTo(size.width * 0.4934092, size.height * 0.3511777);
    path_1.lineTo(size.width * 0.4858672, size.height * 0.3587207);
    path_1.lineTo(size.width * 0.4835107, size.height * 0.3615488);
    path_1.lineTo(size.width * 0.4797393, size.height * 0.3672051);
    path_1.lineTo(size.width * 0.4731406, size.height * 0.3785176);
    path_1.lineTo(size.width * 0.4698408, size.height * 0.3851172);
    path_1.lineTo(size.width * 0.4651270, size.height * 0.3950166);
    path_1.lineTo(size.width * 0.4580566, size.height * 0.4133994);
    path_1.lineTo(size.width * 0.4566416, size.height * 0.4181133);
    path_1.lineTo(size.width * 0.4552275, size.height * 0.4223564);
    path_1.lineTo(size.width * 0.4505146, size.height * 0.4412109);
    path_1.cubicTo(
      size.width * 0.4489434,
      size.height * 0.4514238,
      size.width * 0.4481572,
      size.height * 0.4586523,
      size.width * 0.4425010,
      size.height * 0.4478105,
    );
    path_1.lineTo(size.width * 0.4410869, size.height * 0.4388545);
    path_1.lineTo(size.width * 0.4410869, size.height * 0.3855889);
    path_1.lineTo(size.width * 0.4311875, size.height * 0.3851172);
    path_1.cubicTo(
      size.width * 0.4052617,
      size.height * 0.4138711,
      size.width * 0.3576533,
      size.height * 0.4718506,
      size.width * 0.3576533,
      size.height * 0.5463281,
    );
    path_1.lineTo(size.width * 0.3684951, size.height * 0.5830947);
    path_1.close();

    final paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = Colors.white.withValues(alpha: 1.0);
    canvas.drawPath(path_1, paint1Fill);

    final path_2 = Path();
    path_2.moveTo(size.width * 0.2105840, size.height * 0.7650469);
    path_2.cubicTo(
      size.width * 0.2113691,
      size.height * 0.7677178,
      size.width * 0.2138838,
      size.height * 0.7725889,
      size.width * 0.2181260,
      size.height * 0.7721172,
    );
    path_2.lineTo(size.width * 0.2421660, size.height * 0.7499629);
    path_2.lineTo(size.width * 0.2817617, size.height * 0.7113096);
    path_2.lineTo(size.width * 0.3270137, size.height * 0.6665293);
    path_2.lineTo(size.width * 0.3963057, size.height * 0.5972373);
    path_2.lineTo(size.width * 0.4750254, size.height * 0.5185166);
    path_2.lineTo(size.width * 0.5528027, size.height * 0.4402686);
    path_2.lineTo(size.width * 0.5839131, size.height * 0.4086865);
    path_2.lineTo(size.width * 0.6126670, size.height * 0.3789902);
    path_2.lineTo(size.width * 0.6206807, size.height * 0.3705049);
    path_2.lineTo(size.width * 0.6206807, size.height * 0.3700332);
    path_2.cubicTo(
      size.width * 0.6194238,
      size.height * 0.3665771,
      size.width * 0.6202090,
      size.height * 0.3639053,
      size.width * 0.6121963,
      size.height * 0.3615488,
    );
    path_2.lineTo(size.width * 0.6093682, size.height * 0.3639062);
    path_2.lineTo(size.width * 0.5914551, size.height * 0.3813467);
    path_2.lineTo(size.width * 0.5702432, size.height * 0.4020869);
    path_2.lineTo(size.width * 0.5504453, size.height * 0.4214141);
    path_2.lineTo(size.width * 0.5320625, size.height * 0.4397969);
    path_2.lineTo(size.width * 0.5160352, size.height * 0.4553525);
    path_2.lineTo(size.width * 0.4976514, size.height * 0.4737363);
    path_2.lineTo(size.width * 0.4797393, size.height * 0.4916484);
    path_2.lineTo(size.width * 0.4698408, size.height * 0.5015479);
    path_2.lineTo(size.width * 0.4561709, size.height * 0.5147461);
    path_2.lineTo(size.width * 0.4425010, size.height * 0.5284160);
    path_2.lineTo(size.width * 0.4297734, size.height * 0.5411436);
    path_2.lineTo(size.width * 0.4165752, size.height * 0.5543418);
    path_2.lineTo(size.width * 0.4010195, size.height * 0.5698975);
    path_2.lineTo(size.width * 0.3835791, size.height * 0.5873379);
    path_2.lineTo(size.width * 0.3656660, size.height * 0.6052500);
    path_2.lineTo(size.width * 0.3472822, size.height * 0.6241055);
    path_2.lineTo(size.width * 0.3331416, size.height * 0.6382461);
    path_2.lineTo(size.width * 0.3190000, size.height * 0.6519160);
    path_2.lineTo(size.width * 0.3034443, size.height * 0.6679434);
    path_2.lineTo(size.width * 0.2878896, size.height * 0.6834990);
    path_2.lineTo(size.width * 0.2718623, size.height * 0.6995254);
    path_2.lineTo(size.width * 0.2572500, size.height * 0.7141377);
    path_2.lineTo(size.width * 0.2398086, size.height * 0.7320508);
    path_2.lineTo(size.width * 0.2228398, size.height * 0.7494912);
    path_2.lineTo(size.width * 0.2110547, size.height * 0.7617471);
    path_2.lineTo(size.width * 0.2105840, size.height * 0.7650469);
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
