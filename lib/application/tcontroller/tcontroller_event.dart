part of 'tcontroller_bloc.dart';

@freezed
class TcontrollerEvent with _$TcontrollerEvent {
  const factory TcontrollerEvent.getListMissionTcontroller() = GetListMissionTcontroller;
  const factory TcontrollerEvent.getListMissionTcontrollerDone() = GetListMissionTcontrollerDone;
  const factory TcontrollerEvent.startControl({required int mission}) =
      StartControl;
  const factory TcontrollerEvent.endControl({required int mission}) =
      EndControl;
  const factory TcontrollerEvent.notationControl() =
      NotationControl;
}
