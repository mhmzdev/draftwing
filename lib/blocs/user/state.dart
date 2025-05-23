part of 'cubit.dart';

// root-state
@immutable
class UserState extends Equatable {
  final CubitState<User> login;
  final CubitState<User> register;

  const UserState({required this.login, required this.register});

  UserState.def()
    : // root-def-constructor
      login = CubitState(),
      register = CubitState();

  UserState copyWith({CubitState<User>? login, CubitState<User>? register}) {
    return UserState(
      login: login ?? this.login,
      register: register ?? this.register,
    );
  }

  @override
  List<Object> get props => [
    // root-state-props
    login,
    register,
  ];
}
