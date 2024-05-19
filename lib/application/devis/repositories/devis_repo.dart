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
    var idClient = await dababase.getId();

    Response a =
        await apiClient.getRequest(ApiRoutes.DEVIS + '?client.id=${idClient}');

    return a;
  }

  Future getlistPack() async {
    Response a = await apiClient.getRequest(ApiRoutes.Pack);

    return a;
  }

  Future getlistSecteurDevis() async {
    Response a = await apiClient.getRequest('/secteur/read');

    return a;
  }

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
      EasyLoading.dismiss();
    }

    return {'longitude': longitude, 'latitude': latitude};
  }
  
   */
}
