part of 'cubit.dart';

// root-state
@immutable
class DraftState extends Equatable {
  final CubitState<void> delete;
  final CubitState<void> saveDraft;
  final CubitState<List<DraftResponse>> drafts;
  final List<DraftResponse> draftsList;
  final int draftsCount;

  const DraftState({
    required this.delete,
    required this.saveDraft,
    required this.drafts,
    this.draftsList = const [],
    this.draftsCount = 0,
  });

  DraftState.def()
    : // root-def-constructor
      delete = CubitState(),
      saveDraft = CubitState(),
      drafts = CubitState(),
      draftsList = const [],
      draftsCount = 0;

  DraftState copyWith({
    CubitState<void>? delete,
    CubitState<void>? saveDraft,
    CubitState<List<DraftResponse>>? drafts,
    List<DraftResponse>? draftsList,
    int? draftsCount,
  }) {
    return DraftState(
      delete: delete ?? this.delete,
      saveDraft: saveDraft ?? this.saveDraft,
      drafts: drafts ?? this.drafts,
      draftsList: draftsList ?? this.draftsList,
      draftsCount: draftsCount ?? this.draftsCount,
    );
  }

  @override
  List<Object> get props => [
    // root-state-props
    delete,
    saveDraft,
    drafts,
    draftsList,
    draftsCount,
  ];
}
