part of 'cubit.dart';

mixin _AgentEmitter on Cubit<AgentState> {
  void _generateDraftLoading() {
    emit(
      state.copyWith(
        generateDraft: state.generateDraft.copyWith(
          action: CubitAction.loading,
        ),
      ),
    );
  }

  void _generateDraftSuccess(DraftResponse? data) {
    emit(
      state.copyWith(
        generateDraft: state.generateDraft.copyWith(
          action: CubitAction.success,
          data: data,
        ),
      ),
    );
  }

  void _generateDraftFailed(Fault e) {
    emit(
      state.copyWith(
        generateDraft: state.generateDraft.copyWith(
          action: CubitAction.failed,
          fault: e,
        ),
      ),
    );
  }

  /// Implement this method in the cubit to reset the state
  /// and if there is any releated data to it.
  void _reset() => UnimplementedError('Method not implemented');
}
