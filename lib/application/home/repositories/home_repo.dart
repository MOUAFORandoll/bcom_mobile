import 'package:Bcom/application/database/database_cubit.dart';
import 'package:Bcom/core.dart';
import 'package:Bcom/infrastructure/_commons/network/app_requests.dart';
import 'package:dio/dio.dart';
 

class HomeRepo {
  final IAppRequests apiClient;
  HomeRepo({required this.apiClient});
  var database = sl.get<DatabaseCubit>();

  Future getBcomInfo() async {
    Response a = await apiClient.postRequest('/api/v1/bcominfo/bcomdata');

    return a;
  }

  Future AllOnbaordingImage() async {
    Response a =
        await apiClient.getRequest('/api/v1/onbaording/AllOnbaordingImage');

    return a;
  }

  Future AllOnbaordingVideo() async {
    Response a =
        await apiClient.getRequest('/api/v1/onbaording/AllOnbaordingVideo');

    return a;
  }
}
