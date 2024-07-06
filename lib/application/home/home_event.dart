part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.setIndex({required dynamic index}) = SetIndexEvent;
  const factory HomeEvent.setIndexHistory({required dynamic index}) =
      SetIndexHistoryEvent;
  
  const factory HomeEvent.getHomeInfo() = GetHomeInfo;
}
