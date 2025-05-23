part of '../home.dart';

class _Form extends StatelessWidget {
  const _Form();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppProps.cardDec,
      padding: Space.a.t12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const GradientIcon(Iconsax.bubble),
              Space.x.t08,
              AppText.h2('Generate Article'),
            ],
          ),
          Space.y.t16,
        ],
      ),
    );
  }
}
