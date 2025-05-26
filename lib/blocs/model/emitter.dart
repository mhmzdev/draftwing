part of 'bloc.dart';

mixin _ModelEmitter on Bloc<ModelEvent, ModelState> {
  void _generateDraftLoading(Emitter<ModelState> emit) {
    emit(
      state.copyWith(
        generateDraft: state.generateDraft.copyWith(action: BlocAction.loading),
      ),
    );
  }

  void _generateDraftSuccess(AgentResponse? data, Emitter<ModelState> emit) {
    emit(
      state.copyWith(
        generateDraft: state.generateDraft.copyWith(
          action: BlocAction.success,
          data: data,
        ),
      ),
    );
  }

  void _generateDraftFailed(Fault e, Emitter<ModelState> emit) {
    emit(
      state.copyWith(
        generateDraft: state.generateDraft.copyWith(
          action: BlocAction.failed,
          fault: e,
        ),
      ),
    );
  }
}
