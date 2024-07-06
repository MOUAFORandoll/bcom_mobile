import 'package:Bcom/application/database/database_cubit.dart';
import 'package:Bcom/core.dart';
import 'package:Bcom/infrastructure/_commons/network/app_requests.dart';
import 'package:dio/dio.dart';

import '../../../utils/constants/apiRoute.dart';

class DevisRepo {
  final IAppRequests apiClient;
  DevisRepo({required this.apiClient});
  var database = sl.get<DatabaseCubit>();
  Future addDevis(data) async {
    Response a = await apiClient.postRequest(ApiRoutes.DEVIS, body: data);

    return a;
  }

  Future addDevisContent(data) async {
    Response a =
        await apiClient.postRequest(ApiRoutes.DEVISCONTENT, body: data);

    return a;
  }
  
  Future getlistDevis() async {
    var user = await database.getUser();
    var data = {'clientId': user!.userId};
    Response a = await apiClient
        .postRequest(ApiRoutes.DEVIS + '/getDevisByClientId', body: data);

    return a;
  }
  
  Future getlistPack() async {
    Response a = await apiClient.postRequest(ApiRoutes.PACK);

    return a;
  }

  Future getlistParametre() async {
    Response a = await apiClient.getRequest(ApiRoutes.PARAMETRE);
    return a;
  }
}
