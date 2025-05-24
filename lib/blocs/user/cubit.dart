import 'dart:async';

import 'package:dio/dio.dart';
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

  Future<void> me() async {
    _meLoading();
    try {
      final data = await _UserProvider.me();
      _meSuccess(data);
    } on Fault catch (e) {
      _meFailed(e);
    }
  }

  void reset() => _reset();
}
