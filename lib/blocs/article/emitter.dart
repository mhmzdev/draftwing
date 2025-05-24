part of 'cubit.dart';

mixin _ArticleEmitter on Cubit<ArticleState> {
  void _publishedLoading() {
    emit(
      state.copyWith(
        published: state.published.copyWith(action: CubitAction.loading),
      ),
    );
  }

  void _publishedSuccess(List<Article> data) {
    emit(
      state.copyWith(
        published: state.published.copyWith(
          action: CubitAction.success,
          data: data,
        ),
        publishedList: data,
      ),
    );
  }

  void _publishedFailed(Fault e) {
    emit(
      state.copyWith(
        published: state.published.copyWith(
          action: CubitAction.failed,
          fault: e,
        ),
      ),
    );
  }

  void _draftsLoading() {
    emit(
      state.copyWith(
        drafts: state.drafts.copyWith(action: CubitAction.loading),
      ),
    );
  }

  void _draftsSuccess(List<Article> data) {
    emit(
      state.copyWith(
        drafts: state.drafts.copyWith(action: CubitAction.success, data: data),
        draftsList: data,
      ),
    );
  }

  void _draftsFailed(Fault e) {
    emit(
      state.copyWith(
        drafts: state.drafts.copyWith(action: CubitAction.failed, fault: e),
      ),
    );
  }

  void _createLoading() {
    emit(
      state.copyWith(
        create: state.create.copyWith(action: CubitAction.loading),
      ),
    );
  }

  void _createSuccess(Article data) {
    emit(
      state.copyWith(
        create: state.create.copyWith(action: CubitAction.success, data: data),
      ),
    );
  }

  void _createFailed(Fault e) {
    emit(
      state.copyWith(
        create: state.create.copyWith(action: CubitAction.failed, fault: e),
      ),
    );
  }

  /// Implement this method in the cubit to reset the state
  /// and if there is any releated data to it.
  void _reset() => UnimplementedError('Method not implemented');
}
