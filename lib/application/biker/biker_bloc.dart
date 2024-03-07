import 'dart:async';

import 'package:Bcom/application/database/database_cubit.dart';
import 'package:Bcom/application/biker/repositories/biker_repo.dart';
import 'package:Bcom/application/model/data/MissionBiker.dart';
import 'package:Bcom/application/model/data/MissionSession.dart';
import 'package:Bcom/application/model/exportmodel.dart';
import 'package:Bcom/presentation/components/exportcomponent.dart';
import 'package:cron/cron.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'biker_event.dart';
part 'biker_state.dart';
part 'biker_bloc.freezed.dart';

class BikerBloc extends Bloc<BikerEvent, BikerState> {
  final BikerRepo bikerRepo;
  final DatabaseCubit database;
  BikerBloc({required this.bikerRepo, required this.database})
      : super(BikerState.initial()) {
    on<GetListMissionBiker>(_getListMissionBiker);
    on<SelectMission>(_selectMission);
    on<GetListMissionBikerEffectue>(_getListMissionBikerEffectue);
    on<StartMissionBiker>(_startMissionBiker);
    on<EndMissionBiker>(_endMissionBiker);
    on<SavePositionForMissionBiker>(_savePositionForMissionBiker);
    on<ListSessionMission>(_listSessionMission);
    on<IncrementTimer>(_incrementTimer);

    on<SetIndexHistoryBikerEvent>((event, emit) async {
      print('-----------------SetindexHistory');
      emit(state.copyWith(indexHistory: event.index));
    });
  }
  _listSessionMission(
      ListSessionMission event, Emitter<BikerState> emit) async {
    var key = await database.getKey();
    emit(state.copyWith(load_list_mission_session: 0));
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

  _selectMission(SelectMission event, Emitter<BikerState> emit) async {
    emit(state.copyWith(mission: event.mission));
  }

  var time = 0;

  late Timer _timer;
  _startMissionBiker(StartMissionBiker event, Emitter<BikerState> emit) async {
    var key = await database.getKey();
    var data = {'mission_id': state.mission!.id, 'keySecret': key};
    emit(state.copyWith(
      isRequest: 0,
      time: 0,
    ));
    await bikerRepo.startMissionBiker(data).then((response) async {
      print('-------------------------------------------------');
      print(response.data);

      if (response.statusCode == 201) {
        print(response.data);

        emit(state.copyWith(
            isRequest: 1,
            sendPosition: true,
            missionsession_id: response.data['missionsession_id']));
        emit(state.copyWith(
          time: 0,
          isRequest: null,
        ));
        _timer = Timer.periodic(Duration(seconds: 1), (Timer t) {
          add(IncrementTimer());
          print('Exécution chaque time');

          // Vérifie si le temps est un multiple de 60
          if ((state.time! % 300) == 0) {
            add(SavePositionForMissionBiker());
            print('Position envoyée');
          }
        });
      } else {
        emit(state.copyWith(mission: null));
        // await cron.close();
        emit(state.copyWith(isRequest: 2));
        emit(state.copyWith(sendPosition: null));
      }
    }).onError((e, s) async {
      emit(state.copyWith(mission: null));
      // await cron.close();
      emit(state.copyWith(isRequest: 2));
      emit(state.copyWith(sendPosition: null));
    }).catchError((e) async {
      // await cron.close();
      emit(state.copyWith(mission: null));
      print('---------------${e}');
      emit(state.copyWith(isRequest: 2));
      emit(state.copyWith(sendPosition: null));
    });
  }

  _endMissionBiker(EndMissionBiker event, Emitter<BikerState> emit) async {
    var key = await database.getKey();
    var data = {'missionSession': state.missionsession_id, 'keySecret': key};

    emit(state.copyWith(isRequest: 0));

    await bikerRepo.endMissionBiker(data).then((response) async {
      print(response.data);

      if (response.statusCode == 201) {
        print(response.data);

        emit(state.copyWith(isRequest: 1, missionsession_id: null));
        // await cron.close();

        emit(state.copyWith(sendPosition: false));
        emit(state.copyWith(sendPosition: null));
        emit(state.copyWith(mission: null));
        _timer.cancel();

        emit(state.copyWith(
          isRequest: null,
          time: 0,
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

  _incrementTimer(IncrementTimer event, Emitter<BikerState> emit) async {
    if (state.sendPosition == true) {
      var time = state.time! + 1;
      emit(state.copyWith(isRequest: null, time: time));
    }
  }

  _savePositionForMissionBiker(
      SavePositionForMissionBiker event, Emitter<BikerState> emit) async {
    if (state.sendPosition == true) {
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
        'missionSession': state.missionsession_id,
        'longitude': position.longitude,
        'latitude': position.latitude,
      };

      await bikerRepo
          .saveMissionLocationPointBiker(data)
          .then((response) {
            print(response.data);

            if (response.statusCode == 200) {
              print(response.data);
            } else {}
          })
          .onError((e, s) {})
          .catchError((e) {
            print('---------------${e}');
          });
    }
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

  _getListMissionBikerEffectue(
      GetListMissionBikerEffectue event, Emitter<BikerState> emit) async {
    var key = await database.getKey();
    emit(state.copyWith(
      load_list_mission_done: 0,
    ));
    await bikerRepo.getListMissionBikerEffectue(key).then((response) {
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