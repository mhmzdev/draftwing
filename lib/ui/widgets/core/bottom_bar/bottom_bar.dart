import 'package:draftwing/configs/configs.dart';
import 'package:draftwing/router/routes.dart';
import 'package:draftwing/ui/widgets/design/gradients/icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

part '_data.dart';
part '_model.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    App.init(context);
    final currentPath = context.currentPath;

    return KeyboardVisibilityBuilder(
      builder: (context, isVisible) {
        if (isVisible) return const SizedBox.shrink();
        return Container(
          padding: Space.z.sb(8).t(8),
          decoration: BoxDecoration(
            color: AppTheme.c.cardBg,
            border: Border(
              top: BorderSide(
                color: AppTheme.c.textDim.withValues(alpha: .25),
                width: 1,
              ),
            ),
          ),
          child: Material(
            color: Colors.transparent,
            child: Row(
              children:
                  _tabs.map((tab) {
                    final isActive = tab.path == currentPath;
                    final color =
                        isActive ? AppTheme.c.primary : AppTheme.c.textDim;

                    return Expanded(
                      child: InkWell(
                        borderRadius: 8.radius(),
                        splashColor: AppTheme.c.primary.withValues(alpha: .15),
                        highlightColor: AppTheme.c.secondary.withValues(
                          alpha: .15,
                        ),
                        onTap: () {
                          /// If the tab is already active, do nothing.
                          if (isActive) return;
                          tab.path.pushReplace(context);
                        },
                        child: Column(
                          children: [
                            Space.y.t04,
                            if (isActive)
                              GradientIcon(tab.icon)
                            else
                              Icon(tab.icon, color: color),
                            Space.y.t04,
                            AppText.b1(tab.label).cl(color),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
            ),
          ),
        );
      },
    );
  }
}
