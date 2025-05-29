part of 'bloc.dart';

@immutable
class ModelState extends Equatable {
  // --- nested states --- //
  final BlocState<AgentResponse?> generateDraft;

  // --- state data --- //
  final List<Object> dataList;
  final int dataCount;

  const ModelState({
    required this.generateDraft,
    this.dataList = const [],
    this.dataCount = 0,
  });

  ModelState.def()
    : // root-def-constructor
      generateDraft = BlocState(),
      dataList = const [],
      dataCount = 0;

  ModelState copyWith({
    BlocState<AgentResponse?>? generateDraft,
    List<Object>? dataList,
    int? dataCount,
  }) {
    return ModelState(
      generateDraft: generateDraft ?? this.generateDraft,
      dataList: dataList ?? this.dataList,
      dataCount: dataCount ?? this.dataCount,
    );
  }

  @override
  List<Object?> get props => [
    // root-state-props
    generateDraft,
  ];
}
