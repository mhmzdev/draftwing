import 'package:configs/configs.dart';
import 'package:draftwing/ui/widgets/design/full_screen_loader/full_screen_loader.dart';
import 'package:flutter/material.dart';

/// {@template paginated_loader}
/// PaginatedLoader widget.
/// {@endtemplate}
class FloatingLoader extends StatelessWidget {
  /// {@macro paginated_loader}
  const FloatingLoader({
    super.key, // ignore: unused_element
    this.title,
    required this.message,
    this.left,
    this.right,
    this.bottom,
  });

  final double? left;
  final double? right;
  final double? bottom;

  final String message;
  final String? title;

  @override
  Widget build(BuildContext context) {
    App.init(context);

    return Positioned(
      left: left ?? SpaceToken.t16,
      right: right ?? SpaceToken.t16,
      bottom: bottom ?? SpaceToken.t12 + context.bottomSafe(),
      child: Container(
        padding: Space.a.t16,
        decoration: AppProps.cardDec.copyWith(color: AppTheme.c.appBg),
        child: Row(
          children: [
            const AppIconLoader(radius: 36),
            Space.x.t16,
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText.h3(title ?? 'Loading'),
                  AppText.b1(message).cl(AppTheme.c.textDim),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
