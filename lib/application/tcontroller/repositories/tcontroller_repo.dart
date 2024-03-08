import 'package:Bcom/infrastructure/_commons/network/app_requests.dart';
import 'package:dio/dio.dart';

import '../../../utils/constants/apiRoute.dart';

class TcontrollerRepo {
  final IAppRequests apiClient;
  TcontrollerRepo({required this.apiClient});
  final key = 'AIzaSyB2lLkho9yRrZ9DgZ4btFOZ6x22-zZTJ38';
  Future startMissionTcontroller(data) async {
    Response a = await apiClient.postRequest(
        ApiRoutes.Tcontroller + '/start-control-biker',
        body: data);

    return a;
  }

  Future endMissionTcontroller(data) async {
    Response a = await apiClient
        .postRequest(ApiRoutes.Tcontroller + '/end-control-biker', body: data);

    return a;
  }

  Future noteBiker(data) async {
    Response a = await apiClient
        .postRequest(ApiRoutes.Tcontroller + '/note-biker', body: data);

    return a;
  }

  Future getlistMissionTcontroller(keySecret) async {
    Response a = await apiClient.getRequest(
        ApiRoutes.Tcontroller + '/list-mission?keySecretCterrain=${keySecret}');

    return a;
  }

  Future getlistMissionTcontrollerDone(keySecret) async {
    Response a = await apiClient.getRequest(ApiRoutes.Tcontroller +
        '/list-mission-done?keySecretCterrain=${keySecret}');

    return a;
  }
}
