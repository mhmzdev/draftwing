part of '../profile.dart';

class _StatsCard extends StatelessWidget {
  const _StatsCard({
    required this.label,
    required this.icon,
    required this.value,
    this.padding,
  });

  final String label;
  final IconData icon;
  final String value;

  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppProps.cardDec(context),
      padding: padding,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: AppTheme.c.primary),
          Space.y.t08,
          AppText.h1(value),
          Space.y.t04,
          AppText.b1(label),
        ],
      ),
    );
  }
}
