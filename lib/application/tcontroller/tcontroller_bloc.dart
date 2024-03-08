import 'package:Bcom/application/database/database_cubit.dart';
import 'package:Bcom/application/model/data/MissionBiker.dart';
import 'package:Bcom/application/model/data/MissionControl.dart';
import 'package:Bcom/application/model/data/MissionSession.dart';
import 'package:Bcom/application/tcontroller/repositories/tcontroller_repo.dart';

import 'package:Bcom/presentation/components/exportcomponent.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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
    on<StartControl>(startControl);
    on<SelectMissionControl>(_selectMission);
    on<EndControl>(endControl);
    on<NotationControl>(notationControl);
  }

  _selectMission(
      SelectMissionControl event, Emitter<TcontrollerState> emit) async {
    emit(state.copyWith(mission_control: event.mission_control));
  }

  _getListMissionTcontroller(
      GetListMissionTcontroller event, Emitter<TcontrollerState> emit) async {
    var key = await database.getKey();
    emit(state.copyWith(load_list_mission: 0));
    await tcontrollerRepo
        .getlistMissionTcontroller(
      key,
    )
        .then((response) {
      if (response.data != null) {
        emit(state.copyWith(
            load_list_mission: 1,
            list_mission: (response.data['data'] as List)
                .map((e) => MissionControl.fromJson(e))
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

  _getListMissionTcontrollerDone(GetListMissionTcontrollerDone event,
      Emitter<TcontrollerState> emit) async {
    var key = await database.getKey();
    emit(state.copyWith(load_list_mission_done: 0, list_mission_done: null));
    await tcontrollerRepo.getlistMissionTcontrollerDone(key).then((response) {
      if (response.data != null) {
        emit(state.copyWith(
            load_list_mission_done: 1,
            list_mission_done: (response.data['data'] as List)
                .map((e) => MissionControl.fromJson(e))
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

  startControl(StartControl event, Emitter<TcontrollerState> emit) async {
    var data = {
      'idControl': state.mission_control!.id,
    };
    emit(state.copyWith(
      isRequest: 0,
    ));
    await tcontrollerRepo.startMissionTcontroller(data).then((response) async {
      print('-------------------------------------------------');
      print(response.data);

      if (response.statusCode == 201) {
        emit(state.copyWith(isRequest: 1));

        emit(state.copyWith(isRequest: null));

        print(response.data);
      } else {
        emit(state.copyWith(isRequest: 2));

        emit(state.copyWith(isRequest: null));
      }
    }).onError((e, s) async {
      emit(state.copyWith(isRequest: 2));
      emit(state.copyWith(isRequest: null));
    }).catchError((e) async {
      // await cron.close();
      ;
      emit(state.copyWith(isRequest: 2));
      emit(state.copyWith(isRequest: null));
    });
  }

  endControl(EndControl event, Emitter<TcontrollerState> emit) async {
    var data = {
      'idControl': state.mission_control!.id,
    };
    emit(state.copyWith(
      isRequest: 0,
    ));
    await tcontrollerRepo.endMissionTcontroller(data).then((response) async {
      print('-------------------------------------------------');
      print(response.data);

      if (response.statusCode == 201) {
        print(response.data);
        emit(state.copyWith(isRequest: 1));
        emit(state.copyWith(isRequest: null));
        emit(state.copyWith(mission_control: null));
      } else {
        emit(state.copyWith(isRequest: 2));
        emit(state.copyWith(isRequest: null));
      }
    }).onError((e, s) async {
      emit(state.copyWith(isRequest: 2));
      emit(state.copyWith(isRequest: null));
    }).catchError((e) async {
      // await cron.close();
      ;
      emit(state.copyWith(isRequest: 2));
      emit(state.copyWith(isRequest: null));
    });
  }

  notationControl(NotationControl event, Emitter<TcontrollerState> emit) async {
    var data = {
      'idControl': state.mission_control!.id,
      'note': event.note,
    };
    emit(state.copyWith(
      isRequestNote: 0,
    ));
    await tcontrollerRepo.noteBiker(data).then((response) async {
      print('-------------------------------------------------');
      print(response.data);

      if (response.statusCode == 201) {
        emit(state.copyWith(isRequestNote: 1));
        emit(state.copyWith(isRequestNote: null));
        print(response.data);
      } else {
        emit(state.copyWith(isRequestNote: 2));
        emit(state.copyWith(isRequestNote: null));
      }
    }).onError((e, s) async {
      emit(state.copyWith(isRequestNote: 2));
      emit(state.copyWith(isRequestNote: null));
    }).catchError((e) async {
      // await cron.close();
      ;
      emit(state.copyWith(isRequestNote: 2));
      emit(state.copyWith(isRequestNote: null));
    });
  }
}
  // context.read<TcontrollerBloc>().add(GetImageColisGalerie()) 