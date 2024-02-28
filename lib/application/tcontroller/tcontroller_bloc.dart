import 'package:Bcom/application/database/database_cubit.dart';
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
    on<EndControl>(endControl);
    on<NotationControl>(notationControl);
  }
  _getListMissionTcontroller(
      GetListMissionTcontroller event, Emitter<TcontrollerState> emit) async {}
  _getListMissionTcontrollerDone(GetListMissionTcontrollerDone event,
      Emitter<TcontrollerState> emit) async {}
  startControl(StartControl event, Emitter<TcontrollerState> emit) async {}
  endControl(EndControl event, Emitter<TcontrollerState> emit) async {}

  notationControl(
      NotationControl event, Emitter<TcontrollerState> emit) async {}
}
  // context.read<TcontrollerBloc>().add(GetImageColisGalerie()) 