import 'package:Bcom/application/database/database_cubit.dart';
import 'package:Bcom/core.dart';
import 'package:Bcom/infrastructure/_commons/network/app_requests.dart';
import 'package:Bcom/utils/constants/apiRoute.dart';
import 'package:dio/dio.dart';

class UserRepo {
  final IAppRequests apiClient;

  UserRepo({required this.apiClient});
  var database = sl.get<DatabaseCubit>();

  Future Login(data) async {
    Response response =
        await apiClient.postRequest(ApiRoutes.LOGIN, body: data);

    return response;
  }

  Future getUser() async {
    var user = await database.getUser();

    Response response =
        await apiClient.getRequest(ApiRoutes.USER + '/${user!.userId}');

    return response;
  }

  Future addInfoEntreprise(data) async {
    Response response =
        await apiClient.postRequest(ApiRoutes.NEWENTREPRISE, body: data);

    return response;
  }

  Future addInfoClient(data) async {
    Response response =
        await apiClient.postRequest(ApiRoutes.NEWCLIENT, body: data);

    return response;
  }

  Future SignUp(data) async {
    //print(data);
    Response response =
        await apiClient.postRequest(ApiRoutes.SIGNUP, body: data);

    return response;
  }
}
