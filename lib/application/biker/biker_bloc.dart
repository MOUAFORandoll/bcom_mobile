import 'dart:convert';
import 'dart:io';

import 'package:Bcom/application/database/database_cubit.dart';
import 'package:Bcom/application/biker/repositories/biker_repo.dart';
import 'package:Bcom/application/model/data/MissionBiker.dart';
import 'package:Bcom/application/model/data/MissionSession.dart';
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

part 'biker_event.dart';
part 'biker_state.dart';
part 'biker_bloc.freezed.dart';
// https://maps.googleapis.com/maps/api/geocode/json?latlng=4.0670378,9.7830391&sensor=true&key=AIzaSyB2lLkho9yRrZ9DgZ4btFOZ6x22-zZTJ38

class BikerBloc extends Bloc<BikerEvent, BikerState> {
  final BikerRepo bikerRepo;
  final DatabaseCubit database;
  BikerBloc({required this.bikerRepo, required this.database})
      : super(BikerState.initial()) {
    on<GetListMissionBiker>(_getListMissionBiker);
    on<SelectMission>(_selectMission);
    on<GetListMissionBikerDone>(_getListMissionBikerDone);
    on<GetListMissionBikerEncours>(_getListMissionBikerEncours);
    on<StartMissionBiker>(_startMissionBiker);
    on<EndMissionBiker>(_endMissionBiker);
    on<SavePositionForMissionBiker>(_savePositionForMissionBiker);
    on<SetIndexHistoryBikerEvent>((event, emit) async {
      print('-----------------SetindexHistory');
      emit(state.copyWith(indexHistory: event.index));
    });
  }
  _selectMission(SelectMission event, Emitter<BikerState> emit) async {
    var key = await database.getKey();
    emit(state.copyWith(mission: event.mission, load_list_mission_session: 0));
    await bikerRepo
        .getlistMissionBikerSession(key, event.mission.id)
        .then((response) {
      if (response.data != null) {
        emit(state.copyWith(
            load_list_mission_session: 1,
            list_mission_session: (response.data['data'] as List)
                .map((e) => MissionSession.fromJson(e))
                .toList()));
        emit(state.copyWith(missionSession: state.list_mission_session!.last));
      } else {
        emit(state.copyWith(
          load_list_mission_session: 2,
        ));
      }
    }).onError((e, s) {
      emit(state.copyWith(
        load_list_mission_session: 2,
      ));
    });
  }

  _endMissionBiker(EndMissionBiker event, Emitter<BikerState> emit) async {
    var key = await database.getKey();
    var data = {'missionSession': event.missionsession_id, 'keySecret': key};

    emit(state.copyWith(isRequest: 0));

    await bikerRepo.endMissionBiker(data).then((response) {
      print(response.data);

      if (response.statusCode == 200) {
        print(response.data);

        emit(state.copyWith(
          isRequest: 1,
        ));
      } else {
        emit(state.copyWith(isRequest: 2));
      }
    }).onError((e, s) {
      emit(state.copyWith(isRequest: 2));
    }).catchError((e) {
      print('---------------${e}');
      emit(state.copyWith(isRequest: 2));
    });
  }

  _startMissionBiker(StartMissionBiker event, Emitter<BikerState> emit) async {
    var key = await database.getKey();
    var data = {'mission_id': state.mission, 'keySecret': key};
    emit(state.copyWith(isRequest: 0));

    await bikerRepo.startMissionBiker(data).then((response) {
      print(response.data);

      if (response.statusCode == 200) {
        print(response.data);

        emit(state.copyWith(
          isRequest: 1,
        ));
      } else {
        emit(state.copyWith(isRequest: 2));
      }
    }).onError((e, s) {
      emit(state.copyWith(isRequest: 2));
    }).catchError((e) {
      print('---------------${e}');
      emit(state.copyWith(isRequest: 2));
    });
  }

  _savePositionForMissionBiker(
      SavePositionForMissionBiker event, Emitter<BikerState> emit) async {
    var position;

    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {}

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.always ||
          permission == LocationPermission.unableToDetermine ||
          permission == LocationPermission.whileInUse) {
        position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high,
        );
      }
    }
    position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
    position = await Geolocator.getCurrentPosition();
    var data = {
      'missionSession': 1,
      'longitude': position.longitude,
      'latitude': position.latitude,
    };
    emit(state.copyWith(isRequest: 0));

    await bikerRepo.saveMissionLocationPointBiker(data).then((response) {
      print(response.data);

      if (response.statusCode == 200) {
        print(response.data);

        emit(state.copyWith(
          isRequest: 1,
        ));
      } else {
        emit(state.copyWith(isRequest: 2));
      }
    }).onError((e, s) {
      emit(state.copyWith(isRequest: 2));
    }).catchError((e) {
      print('---------------${e}');
      emit(state.copyWith(isRequest: 2));
    });
  }

  _getListMissionBiker(
      GetListMissionBiker event, Emitter<BikerState> emit) async {
    var key = await database.getKey();
    emit(state.copyWith(
      load_list_mission: 0,
    ));
    await bikerRepo.getlistMissionBiker(key).then((response) {
      if (response.data != null) {
        emit(state.copyWith(
            load_list_mission: 1,
            list_mission: (response.data['data'] as List)
                .map((e) => Mission.fromJson(e))
                .toList()));
      } else {
        emit(state.copyWith(
          load_list_mission: 2,
        ));
      }
    }).onError((e, s) {
      emit(state.copyWith(
        load_list_mission: 2,
      ));
    });
  }

  _getListMissionBikerEncours(
      GetListMissionBikerEncours event, Emitter<BikerState> emit) async {
    var key = await database.getKey();
    emit(state.copyWith(
      load_list_mission_encours: 0,
    ));
    await bikerRepo.getlistMissionBikerEncours(key).then((response) {
      if (response.data != null) {
        emit(state.copyWith(
            load_list_mission_encours: 1,
            list_mission_encours: (response.data['data'] as List)
                .map((e) => MissionBiker.fromJson(e))
                .toList()));
      } else {
        emit(state.copyWith(
          load_list_mission_encours: 2,
        ));
      }
    }).onError((e, s) {
      emit(state.copyWith(
        load_list_mission_encours: 2,
      ));
    });
  }

  _getListMissionBikerDone(
      GetListMissionBikerDone event, Emitter<BikerState> emit) async {
    var key = await database.getKey();
    emit(state.copyWith(
      load_list_mission_done: 0,
    ));
    await bikerRepo.getlistMissionBikerDone(key).then((response) {
      if (response.data != null) {
        emit(state.copyWith(
            load_list_mission_done: 1,
            list_mission_done: (response.data['data'] as List)
                .map((e) => MissionBiker.fromJson(e))
                .toList()));
      } else {
        emit(state.copyWith(
          load_list_mission_done: 2,
        ));
      }
    }).onError((e, s) {
      emit(state.copyWith(
        load_list_mission_done: 2,
      ));
    });
  }
}
  // context.read<BikerBloc>().add(GetImageColisGalerie()) 