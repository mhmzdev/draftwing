part of 'bloc.dart';

@immutable
class DraftState extends Equatable {
  // --- nested states --- //
  final BlocState<void> delete;
  final BlocState<void> saveDraft;
  final BlocState<List<DraftResponse>> drafts;

  // --- state data --- //
  final List<DraftResponse> draftsList;
  final int draftsCount;

  const DraftState({
    required this.delete,
    required this.drafts,
    required this.saveDraft,
    this.draftsList = const [],
    this.draftsCount = 0,
  });

  DraftState.def()
    : delete = BlocState<void>(),
      saveDraft = BlocState<void>(),
      drafts = BlocState<List<DraftResponse>>(),
      draftsList = const [],
      draftsCount = 0;

  DraftState copyWith({
    BlocState<void>? delete,
    BlocState<void>? saveDraft,
    BlocState<List<DraftResponse>>? drafts,
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
  List<Object?> get props => [
    draftsList,
    draftsCount,
    delete,
    saveDraft,
    drafts,
  ];
}
