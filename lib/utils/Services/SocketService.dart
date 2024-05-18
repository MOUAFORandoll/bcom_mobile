import 'dart:convert';
import 'package:Bcom/application/model/data/LivraisonModel.dart';
import 'package:Bcom/infrastructure/_commons/network/request_url.dart';

import 'package:socket_io_client/socket_io_client.dart' as IO;

class SocketService {
  // late IO.Socket socket;
  IO.Socket socket = IO.io(RequestUrl().socketUrl, <String, dynamic>{
    'transports': ['websocket'],
    'autoConnect': true,
  });

  void callCenter({required String recepteur, required Function action}) {
    socket.on('service_client', (data) {
      print(data);
      if (data != null && data != 'null') {
        if (jsonDecode(data)['recepteur'].toString() == recepteur.toString()) {
          action(jsonDecode(data)['data']);
        }
      }
    });
  }

//recepteur ici est l'id du user
  void notifications(recepteur, Function action) {
    // socket.on('notifications', (msg) {
    //   print(recepteur);
    //   print('------notifications----********************************-------');

    //   if (msg != null && msg != 'null') {
    //     if (jsonDecode(msg)['recepteur'].toString() == recepteur.toString()) {
    //       print('-----------------');
    //       print(jsonDecode(msg));
    //       action(NotificationModel.fromJson(jsonDecode(msg)));
    //     }
    //   }
    //   // socket.close();
    //   // setMessage('destination', msg['message']);
    // });
    // // });
    // print(socket.connected);
  }
}
