part of '../configs.dart';

abstract class BlocActionMixinBlueprint {
  final BlocAction action = BlocAction.def;
}

mixin BlocActionMixin implements BlocActionMixinBlueprint {
  bool get isDefault => action == BlocAction.def;
  bool get isInit => action == BlocAction.init;
  bool get isPreparing => action == BlocAction.preparing;
  bool get isLoading => action == BlocAction.loading;
  bool get isSuccess => action == BlocAction.success;
  bool get isFailed => action == BlocAction.failed;
  bool get isCancelled => action == BlocAction.cancelled;
}

enum BlocAction { def, init, preparing, loading, success, failed, cancelled }
