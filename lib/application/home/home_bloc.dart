import 'dart:async';

import 'package:Bcom/application/database/database_cubit.dart';
import 'package:Bcom/application/home/repositories/home_repo.dart';
import 'package:Bcom/application/model/data/HomeInfoModel.dart'; 

import 'package:Bcom/application/model/exportmodel.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepo homeRepo;
  final DatabaseCubit database;
  HomeBloc({required this.homeRepo, required this.database})
      : super(HomeState.initial()) {
   
    on<SetIndexEvent>((event, emit) async {
      print('--------${event.index}---------SetIndexEvent');
      emit(state.copyWith(index: event.index));
    });
    on<GetHomeInfo>(getHomeInfo);
  }

  getHomeInfo(GetHomeInfo event, Emitter<HomeState> emit) async {
    emit(state.copyWith(
      loadHomeInfo: 0,
    ));
    await homeRepo.getBcomInfo().then((response) {
      if (response.data != null) {
        emit(state.copyWith(
            loadHomeInfo: 1,
            bcomInfo: BcomInfo.fromJson(response.data['data'])));
      } else {
        emit(state.copyWith(
          loadHomeInfo: 2,
        ));
      }
    }).onError((e, s) {
      emit(state.copyWith(
        loadHomeInfo: 2,
      ));
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
