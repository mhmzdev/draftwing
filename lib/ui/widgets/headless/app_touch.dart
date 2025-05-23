import 'package:flutter/material.dart';

/// [AppTouch]is a wrapper for [InkWell] that removes the splash effect.
/// This is useful when you want to use the InkWell widget but don't want the splash effect.
class AppTouch extends StatelessWidget {
  final void Function() onTap;
  final void Function()? onLongPress;
  final void Function(bool)? onHover;

  final Widget child;
  const AppTouch({
    super.key,
    required this.onTap,
    required this.child,
    this.onLongPress,
    this.onHover,
  });

  @override
  Widget build(BuildContext context) => InkWell(
    focusColor: Colors.transparent,
    highlightColor: Colors.transparent,
    hoverColor: Colors.transparent,
    splashColor: Colors.transparent,
    onTap: onTap,
    onLongPress: onLongPress,
    onHover: onHover,
    child: child,
  );
}
