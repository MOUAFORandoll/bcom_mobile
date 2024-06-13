import 'package:Bcom/application/database/database_cubit.dart';
import 'package:Bcom/core.dart';
import 'package:Bcom/infrastructure/_commons/network/app_requests.dart';
import 'package:dio/dio.dart';

import '../../../utils/constants/apiRoute.dart';

class AbonnementRepo {
  final IAppRequests apiClient;
  AbonnementRepo({required this.apiClient});
  var database = sl.get<DatabaseCubit>();
  Future newAbonnement(data) async {
    Response a =
        await apiClient.postRequest(ApiRoutes.ABONNEMENT_USER, body: data);

    return a;
  }

  Future getlistAbonnement() async {
    Response a = await apiClient.postRequest(ApiRoutes.ABONNEMENT_ALL);

    return a;
  }

  Future userAbonnement(data) async {
    Response a =
        await apiClient.postRequest(ApiRoutes.ABONNEMENT_USER, body: data);
    print(a.data);
    return a;
  }
}
