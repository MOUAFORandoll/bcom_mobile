part of 'tcontroller_bloc.dart';

@freezed
class TcontrollerEvent with _$TcontrollerEvent {
  const factory TcontrollerEvent.getListMissionTcontroller() =
      GetListMissionTcontroller;
  const factory TcontrollerEvent.getListMissionTcontrollerDone() =
      GetListMissionTcontrollerDone;
  const factory TcontrollerEvent.startControl() = StartControl;
  const factory TcontrollerEvent.endControl() = EndControl;
  const factory TcontrollerEvent.selectMissionControl(
      {required MissionControl mission_control}) = SelectMissionControl;
  const factory TcontrollerEvent.notationControl({required double note}) =
      NotationControl;
}
