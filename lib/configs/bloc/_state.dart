part of '../configs.dart';

class BlocState<T> extends Equatable with BlocActionMixin {
  @override
  final BlocAction action;
  final dynamic meta;
  final T? data;
  final Fault? fault;

  BlocState({
    this.action = BlocAction.def,
    this.data,
    this.meta,
    this.fault, //
  });

  BlocState<T> copyWith({
    BlocAction? action,
    T? data,
    dynamic meta,
    Fault? fault,
  }) {
    return BlocState<T>(
      action: action ?? this.action,
      data: data ?? this.data,
      meta: meta ?? this.meta,
      fault: fault ?? this.fault,
    );
  }

  BlocState<T> merge(BlocState<T> model) {
    return BlocState<T>(
      action: model.action,
      meta: model.meta ?? this.meta,
      data: model.data ?? this.data,
      fault: model.fault ?? this.fault,
    );
  }

  T get getData => data!;

  @override
  List<Object?> get props => [action, data, meta, fault];

  @override
  String toString() =>
      'BlocState(action: $action, data: ${data?.toString() ?? data}, meta: $meta, fault: $fault)';
}
