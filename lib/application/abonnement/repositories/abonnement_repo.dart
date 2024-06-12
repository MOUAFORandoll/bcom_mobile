import 'package:Bcom/application/database/database_cubit.dart';
import 'package:Bcom/core.dart';
import 'package:Bcom/infrastructure/_commons/network/app_requests.dart';
import 'package:dio/dio.dart';

import '../../../utils/constants/apiRoute.dart';

class AbonnementRepo {
  final IAppRequests apiClient;
  AbonnementRepo({required this.apiClient});
  var dababase = sl.get<DatabaseCubit>();
  Future newAbonnement(data) async {
    Response a =
        await apiClient.postRequest(ApiRoutes.ABONNEMENT_USER, body: data);

    return a;
  }

  Future getlistAbonnement() async {
    Response a = await apiClient.postRequest(ApiRoutes.ABONNEMENT_ALL);

    return a;
  }

  Future userAbonnement() async {
    var user = await dababase.getUser();

    Response a =
        await apiClient.getRequest(ApiRoutes.ABONNEMENT_USER + '/${user!.id}');
    print(a.data);
    return a;
  }
}
