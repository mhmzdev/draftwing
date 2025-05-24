part of 'cubit.dart';

// root-state
@immutable
class AgentState extends Equatable {
  final CubitState<DraftResponse?> generateDraft;

  const AgentState({required this.generateDraft});

  AgentState.def()
    : // root-def-constructor
      generateDraft = CubitState();

  AgentState copyWith({CubitState<DraftResponse?>? generateDraft}) {
    return AgentState(generateDraft: generateDraft ?? this.generateDraft);
  }

  @override
  List<Object> get props => [
    // root-state-props
    generateDraft,
  ];
}
