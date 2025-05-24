part of 'cubit.dart';

// root-state
@immutable
class UserState extends Equatable {
  final CubitState<User> me;
  final User? user;

  const UserState({required this.me, this.user});

  UserState.def()
    : // root-def-constructor
      me = CubitState(),
      user = null;

  UserState copyWith({CubitState<User>? me, User? user}) {
    return UserState(me: me ?? this.me, user: user ?? this.user);
  }

  @override
  List<Object> get props => [
    // root-state-props
    me,
  ];
}
