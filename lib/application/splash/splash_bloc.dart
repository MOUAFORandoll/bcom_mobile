import 'package:Bcom/routes/app_router.gr.dart';

import 'package:auto_route/auto_route.dart'; 
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:Bcom/application/database/database_cubit.dart';
 

part 'splash_event.dart';
part 'splash_state.dart';
part 'splash_bloc.freezed.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final DatabaseCubit database;

  SplashBloc({required this.database}) : super(const SplashState.loading()) {
    on<SplashEvent>((event, emit) {
      // GetStorage box = sl.get<GetStorage>();
      // box.write('first', 0);
    });
    on<StartLoading>((event, emit) async {
      var isConnected = await database.getUser() != null;

      await Future.delayed(Duration(seconds: 5), () {
        PageRouteInfo<dynamic> route;

        route = /* (box.read('first') != 1)
            ? const OnBoardingRoute()
            : */
            isConnected ? const HomeRoute() : const AuthRoute();

        emit(SplashState.loaded(isConnected, route));
      });
    });
  }
}
