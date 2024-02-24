import 'dart:convert';
import 'dart:io';

import 'package:Bcom/application/database/database_cubit.dart';
import 'package:Bcom/application/tcontroller/repositories/tcontroller_repo.dart';
import 'package:Bcom/application/model/exportmodel.dart';
import 'package:Bcom/core.dart';
import 'package:Bcom/infrastructure/_commons/network/env_config.dart';

import 'package:Bcom/presentation/components/exportcomponent.dart';
import 'package:Bcom/utils/Services/SocketService.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

part 'tcontroller_event.dart';
part 'tcontroller_state.dart';
part 'tcontroller_bloc.freezed.dart';
// https://maps.googleapis.com/maps/api/geocode/json?latlng=4.0670378,9.7830391&sensor=true&key=AIzaSyB2lLkho9yRrZ9DgZ4btFOZ6x22-zZTJ38

class TcontrollerBloc extends Bloc<TcontrollerEvent, TcontrollerState> {
  final TcontrollerRepo tcontrollerRepo;
  final DatabaseCubit database;
  TcontrollerBloc({required this.tcontrollerRepo, required this.database})
      : super(TcontrollerState.initial()) {
    on<GetListMissionTcontroller>(_getListMissionTcontroller);
    on<GetListMissionTcontrollerDone>(_getListMissionTcontrollerDone);
    on<StartMissionTcontroller>(_startMissionTcontroller);
    on<EndMissionTcontroller>(_endMissionTcontroller);
    on<SavePositionForMissionTcontroller>(_savePositionForMissionTcontroller);
  }
  _endMissionTcontroller(
      EndMissionTcontroller event, Emitter<TcontrollerState> emit) async {}
  _startMissionTcontroller(
      StartMissionTcontroller event, Emitter<TcontrollerState> emit) async {}
  _getListMissionTcontroller(
      GetListMissionTcontroller event, Emitter<TcontrollerState> emit) async {}
  _getListMissionTcontrollerDone(GetListMissionTcontrollerDone event,
      Emitter<TcontrollerState> emit) async {}
  _savePositionForMissionTcontroller(SavePositionForMissionTcontroller event,
      Emitter<TcontrollerState> emit) async {}
}
  // context.read<TcontrollerBloc>().add(GetImageColisGalerie()) 