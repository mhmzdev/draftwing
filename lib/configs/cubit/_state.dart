part of '../configs.dart';

class CubitState<T> with CubitActionMixin {
  @override
  final CubitAction action;
  final dynamic meta;
  final T? data;
  final Fault? fault;

  CubitState({this.action = CubitAction.def, this.data, this.meta, this.fault});

  CubitState<T> copyWith({
    CubitAction? action,
    T? data,
    dynamic meta,
    Fault? fault,
  }) {
    return CubitState<T>(
      action: action ?? this.action,
      data: data ?? this.data,
      meta: meta ?? this.meta,
      fault: fault ?? this.fault,
    );
  }

  CubitState<T> merge(CubitState<T> model) {
    return CubitState<T>(
      action: model.action,
      meta: model.meta ?? this.meta,
      data: model.data ?? this.data,
      fault: model.fault ?? this.fault,
    );
  }

  T get getData => data!;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CubitState<T> &&
        other.action == action &&
        other.data == data &&
        other.meta == meta &&
        other.fault == fault;
  }

  @override
  int get hashCode =>
      action.hashCode ^ data.hashCode ^ meta.hashCode ^ fault.hashCode;

  @override
  String toString() =>
      'CubitState(action: $action, data: ${data?.toString() ?? data}, meta: $meta, fault: $fault)';
}
