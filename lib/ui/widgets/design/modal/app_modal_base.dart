import 'package:configs/configs.dart';
import 'package:draftwing/ui/widgets/headless/focus_handler.dart';
import 'package:flutter/material.dart';

/// [AppModalBase] is a base modal widget that can be used to create custom modals.
/// It provides a consistent design for all modals in the app.
class AppModalBase extends StatelessWidget {
  const AppModalBase({
    super.key,
    this.padding,
    this.expanded = true,
    required this.child,
    this.canPop = true,
    this.bottomSafe = true,
  });

  final Widget child;
  final bool expanded;
  final bool canPop;
  final EdgeInsets? padding;
  final bool bottomSafe;

  @override
  Widget build(BuildContext context) {
    App.init(context);

    Widget body = Padding(
      padding: padding ?? (Space.a.t16 + Space.b.t04),
      child: child,
    );

    if (expanded) {
      body = Expanded(child: body);
    } else {
      body = Flexible(child: body);
    }

    return PopScope(
      canPop: canPop,
      child: GestureDetector(
        onTap: () => FocusHandler.tap(context),
        child: Container(
          decoration: BoxDecoration(
            color: AppTheme.c.appBg,
            borderRadius: 16.top(),
          ),
          child: Material(
            color: Colors.transparent,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Space.y.t20,
                Center(
                  child: Container(
                    width: 50,
                    height: 4,
                    decoration: BoxDecoration(
                      borderRadius: 360.radius(),
                      color: AppTheme.c.secondary,
                    ),
                  ),
                ),
                body,
                if (bottomSafe) Space.bottom,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
