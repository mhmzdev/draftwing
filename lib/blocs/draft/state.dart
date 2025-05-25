part of 'cubit.dart';

// root-state
@immutable
class DraftState extends Equatable {
  final CubitState<void> saveDraft;
  final CubitState<List<DraftResponse>> drafts;
  final List<DraftResponse> draftsList;
  final int draftsCount;

  const DraftState({
    required this.saveDraft,
    required this.drafts,
    this.draftsList = const [],
    this.draftsCount = 0,
  });

  DraftState.def()
    : // root-def-constructor
      saveDraft = CubitState(),
      drafts = CubitState(),
      draftsList = const [],
      draftsCount = 0;

  DraftState copyWith({
    CubitState<void>? saveDraft,
    CubitState<List<DraftResponse>>? drafts,
    List<DraftResponse>? draftsList,
    int? draftsCount,
  }) {
    return DraftState(
      saveDraft: saveDraft ?? this.saveDraft,
      drafts: drafts ?? this.drafts,
      draftsList: draftsList ?? this.draftsList,
      draftsCount: draftsCount ?? this.draftsCount,
    );
  }

  @override
  List<Object> get props => [
    // root-state-props
    saveDraft,
    drafts,
    draftsList,
    draftsCount,
  ];
}
