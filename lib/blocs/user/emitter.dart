part of 'cubit.dart';

mixin _UserEmitter on Cubit<UserState> {
  void _loginLoading() {
    emit(
      state.copyWith(login: state.login.copyWith(action: CubitAction.loading)),
    );
  }

  void _loginSuccess(User data) {
    emit(
      state.copyWith(
        login: state.login.copyWith(action: CubitAction.success, data: data),
      ),
    );
  }

  void _loginFailed(Fault e) {
    emit(
      state.copyWith(
        login: state.login.copyWith(action: CubitAction.failed, fault: e),
      ),
    );
  }

  void _registerLoading() {
    emit(
      state.copyWith(
        register: state.register.copyWith(action: CubitAction.loading),
      ),
    );
  }

  void _registerSuccess(User data) {
    emit(
      state.copyWith(
        register: state.register.copyWith(
          action: CubitAction.success,
          data: data,
        ),
      ),
    );
  }

  void _registerFailed(Fault e) {
    emit(
      state.copyWith(
        register: state.register.copyWith(action: CubitAction.failed, fault: e),
      ),
    );
  }

  /// Implement this method in the cubit to reset the state
  /// and if there is any releated data to it.
  void _reset() => UnimplementedError('Method not implemented');
}
