part of 'tcontroller_bloc.dart';

@freezed
class TcontrollerEvent with _$TcontrollerEvent {
  const factory TcontrollerEvent.getListMissionTcontroller() = GetListMissionTcontroller;
  const factory TcontrollerEvent.getListMissionTcontrollerDone() = GetListMissionTcontrollerDone;
  const factory TcontrollerEvent.startMissionTcontroller({required int mission}) =
      StartMissionTcontroller;
  const factory TcontrollerEvent.endMissionTcontroller({required int mission}) =
      EndMissionTcontroller;
  const factory TcontrollerEvent.savePositionForMissionTcontroller() =
      SavePositionForMissionTcontroller;
}
