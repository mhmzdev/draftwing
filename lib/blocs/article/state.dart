part of 'cubit.dart';

// root-state
@immutable
class ArticleState extends Equatable {
  final CubitState<void> saveDraft;
  final CubitState<List<Article>> published;
  final CubitState<List<Article>> drafts;
  final List<Article> publishedList;
  final List<Article> draftsList;

  const ArticleState({
    required this.saveDraft,
    required this.published,
    required this.drafts,
    this.publishedList = const [],
    this.draftsList = const [],
  });

  ArticleState.def()
    : // root-def-constructor
      saveDraft = CubitState(),
      published = CubitState(),
      drafts = CubitState(),
      publishedList = const [],
      draftsList = const [];

  ArticleState copyWith({
    CubitState<void>? saveDraft,
    CubitState<List<Article>>? published,
    CubitState<List<Article>>? drafts,
    List<Article>? publishedList,
    List<Article>? draftsList,
  }) {
    return ArticleState(
      saveDraft: saveDraft ?? this.saveDraft,
      published: published ?? this.published,
      drafts: drafts ?? this.drafts,
      publishedList: publishedList ?? this.publishedList,
      draftsList: draftsList ?? this.draftsList,
    );
  }

  @override
  List<Object> get props => [
    // root-state-props
    saveDraft,
    published,
    drafts,
    publishedList,
    draftsList,
  ];
}
