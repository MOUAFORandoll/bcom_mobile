import 'dart:async';

import 'package:Bcom/application/database/database_cubit.dart';
import 'package:Bcom/entity.dart';

import 'package:Bcom/application/model/exportmodel.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final DatabaseCubit database;
  HomeBloc({required this.database}) : super(HomeState.initial()) {
    on<UserDataEvent>((event, emit) async {
      emit(state.copyWith(index: 0));

      print('---------UserD-------------------------');
      var user = await database.getUser();
      print(
          '---------UserD-----*${user!.toMap()}--------------------*${user.phone}');

      emit(state.copyWith(user: user));
    });

    on<SetIndexEvent>((event, emit) async {
      print('-----------------SetIndexEvent');
      emit(state.copyWith(index: event.index));
    });
    on<SetIndexHistoryEvent>((event, emit) async {
      print('-----------------SetindexHistory');
      emit(state.copyWith(indexHistory: event.index));
    });
  }
  @override
  void onError(Object error, StackTrace stacktrace) {
    super.onError(error, stacktrace);
  }

  @override
  Future<void> close() async {
    await super.close();
  }
}
