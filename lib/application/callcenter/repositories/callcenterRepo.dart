import 'package:Bcom/infrastructure/_commons/exceptions.dart';
import 'package:Bcom/infrastructure/_commons/network/app_requests.dart';
import 'package:Bcom/infrastructure/_commons/throw_error.dart';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';

import '../../../utils/constants/apiRoute.dart';

class CallCenterRepo {
  final IAppRequests apiClient;
  CallCenterRepo({required this.apiClient});
  final key = 'AIzaSyB2lLkho9yRrZ9DgZ4btFOZ6x22-zZTJ38';
  Future newMessage(data) async {
    Response a =
        await apiClient.postRequest(ApiRoutes.CALLCENTERUSER, body: data);

    return a;
  }

  Future getMessage(keySecret) async {
    Response a = await apiClient
        .getRequest(ApiRoutes.CALLCENTERUSER + '?keySecret=${keySecret}');

    return a;
  }
}