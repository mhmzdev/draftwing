import 'dart:async';

import 'package:draftwing/models/user/user.dart';

import 'package:flutter/material.dart';
import 'package:brain/brain.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:configs/configs.dart';

part 'data_provider.dart';
part 'data_parser.dart';
part 'data_mocks.dart';
part 'emitter.dart';
part 'state.dart';

class UserCubit extends Cubit<UserState> with _UserEmitter {
  static UserCubit c(BuildContext context, [bool listen = false]) =>
      BlocProvider.of<UserCubit>(context, listen: listen);
  UserCubit() : super(UserState.def());

  Future<void> login() async {
    _loginLoading();
    try {
      final data = await _UserProvider.login();
      _loginSuccess(data);
    } on Fault catch (e) {
      _loginFailed(e);
    }
  }

  Future<void> register() async {
    _registerLoading();
    try {
      final data = await _UserProvider.register();
      _registerSuccess(data);
    } on Fault catch (e) {
      _registerFailed(e);
    }
  }

  void reset() => _reset();
}
