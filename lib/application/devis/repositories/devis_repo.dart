import 'package:Bcom/infrastructure/_commons/network/app_requests.dart';
import 'package:dio/dio.dart';
import 'package:Bcom/core.dart';

import '../../../utils/constants/apiRoute.dart';
import 'package:Bcom/application/database/database_cubit.dart';

class DevisRepo {
  final IAppRequests apiClient;
  DevisRepo({required this.apiClient});
  var dababase = sl.get<DatabaseCubit>();
  Future newDevis(data) async {
    Response a = await apiClient.postRequest(ApiRoutes.DEVIS, body: data);

    return a;
  }

  Future getlistDevis() async {
    var user = await dababase.getUser();

    Response a =
        await apiClient.getRequest(ApiRoutes.DEVIS + '?client.id=${user!.id}');

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
