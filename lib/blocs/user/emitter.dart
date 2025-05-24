part of 'cubit.dart';

mixin _UserEmitter on Cubit<UserState> {
  void _meLoading() {
    emit(state.copyWith(me: state.me.copyWith(action: CubitAction.loading)));
  }

  void _meSuccess(User data) {
    emit(
      state.copyWith(
        me: state.me.copyWith(action: CubitAction.success, data: data),
        user: data,
      ),
    );
  }

  void _meFailed(Fault e) {
    emit(
      state.copyWith(
        me: state.me.copyWith(action: CubitAction.failed, fault: e),
      ),
    );
  }

  /// Implement this method in the cubit to reset the state
  /// and if there is any releated data to it.
  void _reset() => UnimplementedError('Method not implemented');
}
