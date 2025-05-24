part of 'cubit.dart';

// root-state
@immutable
class ArticleState extends Equatable {
  final CubitState<List<Article>> published;
  final CubitState<List<Article>> drafts;
  final CubitState<void> create;

  final List<Article> publishedList;
  final List<Article> draftsList;

  const ArticleState({
    required this.published,
    required this.drafts,
    required this.create,
    this.publishedList = const [],
    this.draftsList = const [],
  });

  ArticleState.def()
    : // root-def-constructor
      published = CubitState(),
      drafts = CubitState(),
      create = CubitState(),
      publishedList = const [],
      draftsList = const [];

  ArticleState copyWith({
    CubitState<List<Article>>? published,
    CubitState<List<Article>>? drafts,
    CubitState<void>? create,
    List<Article>? publishedList,
    List<Article>? draftsList,
  }) {
    return ArticleState(
      published: published ?? this.published,
      drafts: drafts ?? this.drafts,
      create: create ?? this.create,
      publishedList: publishedList ?? this.publishedList,
      draftsList: draftsList ?? this.draftsList,
    );
  }

  @override
  List<Object> get props => [
    // root-state-props
    published,
    drafts,
    create,
    publishedList,
    draftsList,
  ];
}
