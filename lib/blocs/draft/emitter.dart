part of 'bloc.dart';

mixin _DraftEmitter on Bloc<DraftEvent, DraftState> {
  void _deleteLoading(Emitter<DraftState> emit) {
    emit(
      state.copyWith(delete: state.delete.copyWith(action: BlocAction.loading)),
    );
  }

  void _deleteSuccess(Emitter<DraftState> emit) {
    emit(
      state.copyWith(delete: state.delete.copyWith(action: BlocAction.success)),
    );
  }

  void _deleteFailed(Fault e, Emitter<DraftState> emit) {
    emit(
      state.copyWith(
        delete: state.delete.copyWith(action: BlocAction.failed, fault: e),
      ),
    );
  }

  void _saveDraftLoading(Emitter<DraftState> emit) {
    emit(
      state.copyWith(
        saveDraft: state.saveDraft.copyWith(action: BlocAction.loading),
      ),
    );
  }

  void _saveDraftSuccess(Emitter<DraftState> emit) {
    emit(
      state.copyWith(
        saveDraft: state.saveDraft.copyWith(action: BlocAction.success),
      ),
    );
  }

  void _saveDraftFailed(Fault e, Emitter<DraftState> emit) {
    emit(
      state.copyWith(
        saveDraft: state.saveDraft.copyWith(
          action: BlocAction.failed,
          fault: e,
        ),
      ),
    );
  }

  void _draftsLoading(Emitter<DraftState> emit) {
    emit(
      state.copyWith(drafts: state.drafts.copyWith(action: BlocAction.loading)),
    );
  }

  void _draftsSuccess(List<DraftResponse> data, Emitter<DraftState> emit) {
    emit(
      state.copyWith(
        drafts: state.drafts.copyWith(action: BlocAction.success, data: data),
        draftsList: data,
      ),
    );
  }

  void _draftsFailed(Fault e, Emitter<DraftState> emit) {
    emit(
      state.copyWith(
        drafts: state.drafts.copyWith(action: BlocAction.failed, fault: e),
      ),
    );
  }

  /// Implement this method in the cubit to reset the state
  /// and if there is any releated data to it.
  void _reset() => UnimplementedError('Method not implemented');
}
