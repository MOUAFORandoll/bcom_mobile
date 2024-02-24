import 'package:Bcom/infrastructure/_commons/network/app_requests.dart';
import 'package:dio/dio.dart';

import '../../../utils/constants/apiRoute.dart';

class BikerRepo {
  final IAppRequests apiClient;
  BikerRepo({required this.apiClient});
  final key = 'AIzaSyB2lLkho9yRrZ9DgZ4btFOZ6x22-zZTJ38';
  Future startMissionBiker(data) async {
    Response a = await apiClient.postRequest(ApiRoutes.Biker + '/start-mission',
        body: data);

    return a;
  }

  Future endMissionBiker(data) async {
    Response a = await apiClient.postRequest(ApiRoutes.Biker + '/end-mission',
        body: data);

    return a;
  }

  Future saveMissionLocationPointBiker(data) async {
    Response a = await apiClient.postRequest(
        ApiRoutes.Biker + '/save-mission-location-point',
        body: data);

    return a;
  }

  Future getlistMissionBiker(keySecret) async {
    Response a = await apiClient
        .getRequest(ApiRoutes.Biker + '/list-mission?keySecret=${keySecret}');

    return a;
  }

  Future getlistMissionBikerSession(keySecret, mission_id) async {
    Response a = await apiClient.getRequest(ApiRoutes.Biker +
        '/list-mission-session?keySecret=${keySecret}&mission_id=${mission_id}');

    return a;
  }

  Future getlistMissionBikerDone(keySecret) async {
    Response a = await apiClient.getRequest(
        ApiRoutes.Biker + '/list-mission-done?keySecret=${keySecret}');

    return a;
  }

  Future getlistMissionBikerEncours(keySecret) async {
    Response a = await apiClient.getRequest(
        ApiRoutes.Biker + '/list-mission-done?keySecret=${keySecret}');

    return a;
  }

  // Future calculFraisBiker(data) async {
  //   Response a = await apiClient.postRequest(ApiRoutes.Biker + '/frais',
  //       body: data);

  //   return a;
  // }

  // Future recuperationColis(data) async {
  //   Response a = await apiClient
  //       .patchRequest(ApiRoutes.Biker + '/recuperation', body: data);

  //   return a;
  // }

  // Future receptionColis(data) async {
  //   Response a = await apiClient
  //       .patchRequest(ApiRoutes.Biker + '/reception', body: data);

  //   return a;
  // }

  // Future getHistoryBiker(keySecret) async {
  //   Response a = await apiClient
  //       .getRequest(ApiRoutes.Biker + '/user?keySecret=${keySecret}');

  //   return a;
  // }

  // Future getInfoBikerForHistory(keySecret) async {
  //   Response a = await apiClient
  //       .getRequest(ApiRoutes.Biker + '?keySecret=${keySecret}');

  //   return a;
  // }

  // Future getInfoBikerForBabana(id) async {
  //   Response a = await apiClient
  //       .getRequest(ApiRoutes.Biker + 'babana/info?id=${id}');

  //   return a;
  // }

  // Future getBikerPointByVille(id) async {
  //   Response a =
  //       await apiClient.getRequest(ApiRoutes.Biker_POINT + '?ville=${id}');

  //   return a;
  // }

  // Future getPointRecuperationUser(keySecret) async {
  //   Response a = await apiClient
  //       .getRequest(ApiRoutes.Biker_POINT + '/user?keySecret=${keySecret}');

  //   return a;
  // }

  Future test(indexC) async {
    Response a = await apiClient.getRequest(
      ApiRoutes.TEST + '/' + indexC.toString(),
    );

    return a;
  }

  Future getCategory() async {
    Response a = await apiClient.getRequest(
      ApiRoutes.CATEGORY,
    );

    return a;
  }

  Future getVille() async {
    Response a = await apiClient.getRequest(
      ApiRoutes.VILLE,
    );

    return a;
  }

  Future getModePaiement() async {
    Response a = await apiClient.getRequest(
      ApiRoutes.MODEPAIEMENT,
    );

    return a;
  }

  Future getListNotifications(index, keySecret) async {
    Response a = await apiClient.getRequest(
      ApiRoutes.LIST_NOTIFICATIONS +
          '?page=${index.toString()}&keySecret=${keySecret.toString()}',
    );

    return a;
  }

  Future readNotifications(idNotification) async {
    Response a = await apiClient.getRequest(
      ApiRoutes.READ_NOTIFICATIONS + '?id=${idNotification.toString()}',
    );

    return a;
  }

  /**
   * 
  findPlaceAutoComplete() async {
    try {
     var connect = Dio.Dio();
      final response = await connect.get(
          'https://maps.googleapis.com/maps/api/place/autocomplete/json?key=${key}&input=${placeTexteController.text}');

      if (response.body != null) {
        print(response.body);
        
        final jsonResponse = response.body;

        if (jsonResponse.containsKey('predictions')) {
          _listTextPLace = [];
          final predictions = jsonResponse['predictions'];

          for (var prediction in predictions) {
            if (prediction.containsKey('description')) {
              _listTextPLace.add(prediction['description']);
            }
          }
        } else {
          _listTextPLace = [];
        }

        update();
      } else {
        _listTextPLace = [];
        update();
      }
    } catch (e) {}
  }

  getPlace(text) async {
    loader.open();
    var longitude;
    var latitude;
    var connect = Dio.Dio();
    String url = 'https://places.googleapis.com/v1/places:searchText';
    
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'X-Goog-Api-Key': key,
      'X-Goog-FieldMask':
          'places.displayName,places.formattedAddress,places.location'
    };
    Map<String, dynamic> requestBody = {'textQuery': text};

    final response = await connect.post(url,
        options: Dio.Options(headers: headers), data: requestBody);

    if (response.data != null) {
      print(response.data);
      var _loca = Location.fromJson(response.data['places'][0]['location']);

      print(_loca);
      longitude = _loca.longitude;
      latitude = _loca.latitude;
      _placeTexteController.text = text;

      update();
      loader.close();
    }

    return {'longitude': longitude, 'latitude': latitude};
  }
  
   */
}
