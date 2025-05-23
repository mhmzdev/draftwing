part of '../configs_base.dart';

abstract class CubitActionMixinBlueprint {
  final CubitAction action = CubitAction.def;
}

mixin CubitActionMixin implements CubitActionMixinBlueprint {
  bool get isDefault => action == CubitAction.def;
  bool get isInit => action == CubitAction.init;
  bool get isPreparing => action == CubitAction.preparing;
  bool get isLoading => action == CubitAction.loading;
  bool get isSuccess => action == CubitAction.success;
  bool get isFailed => action == CubitAction.failed;
  bool get isCancelled => action == CubitAction.cancelled;
}

enum CubitAction { def, init, preparing, loading, success, failed, cancelled }
