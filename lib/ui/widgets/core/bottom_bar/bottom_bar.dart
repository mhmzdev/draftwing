import 'package:configs/configs.dart';
import 'package:draftwing/router/routes.dart';
import 'package:flutter/material.dart';

part '_data.dart';
part '_model.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    App.init(context);
    final currentPath = context.currentPath;

    return Container(
      padding: Space.z.sb(8).t(8),
      decoration: BoxDecoration(
        color: AppTheme.c.appBg,
        boxShadow: [AppProps.sectionShadow.first],
      ),
      child: Material(
        color: Colors.transparent,
        child: Row(
          children:
              _tabs.map((tab) {
                final isActive = tab.path == currentPath;
                final color =
                    isActive ? AppTheme.c.secondary : AppTheme.c.textBody;

                return Expanded(
                  child: InkWell(
                    onTap: () {
                      /// If the tab is already active, do nothing.
                      if (isActive) return;
                      tab.path.pushReplace(context);
                    },
                    child: Column(
                      children: [
                        Space.y.t04,
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
  }
}
