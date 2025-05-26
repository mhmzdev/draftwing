import 'dart:core';
import 'dart:math';

import 'package:draftwing/gen/assets/fonts.gen.dart';
import 'package:repos/repos.dart';
import 'package:fault/fault.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:navigation_history_observer/navigation_history_observer.dart';
import 'package:supercharged/supercharged.dart';
import 'package:themed/themed.dart';

export 'package:recase/recase.dart';
export 'package:supercharged/supercharged.dart';
export 'package:themed/themed.dart';

part '_props.dart';

part 'extension/_date.dart';
part 'extension/_double.dart';
part 'extension/_int.dart';
part 'extension/_num.dart';
part 'extension/_space.dart';
part 'extension/_string.dart';
part 'extension/_typography.dart';
part 'extension/_context.dart';
part 'extension/_list.dart';
part 'extension/_global_key.dart';
part 'extension/_map.dart';
part 'extension/_models.dart';
part 'extension/_enum.dart';

part 'space/_data.dart';
part 'space/_model_edge_insets.dart';
part 'space/_model_widget.dart';
part 'space/_space.dart';
part 'space/_tokens.dart';

part 'theme/_colors.dart';
part 'theme/_material.dart';
part 'theme/_theme_data.dart';
part 'theme/_theme_model.dart';
part 'theme/_theme.dart';
part 'theme/_typography.dart';
part 'theme/_app_text.dart';

part 'ui/_breakpoints.dart';
part 'ui/_media.dart';
part 'ui/_screen.dart';
part 'ui/_unit.dart';

part 'cubit/_action.dart';
part 'cubit/_state.dart';
part 'bloc/_action.dart';
part 'bloc/_state.dart';

class App {
  static void init(BuildContext context, [VoidCallback? callback]) {
    AppMedia.init(context);
    AppTheme.init(context);
    AppScreen.init();
    // AppUnit.init();
    _AppTextStyle.init();
    Space.init();

    if (callback != null) {
      callback();
    }
  }
}
