import 'package:http/http.dart' as http;
import '../enums/http.dart';
import './config.dart';

class Transport {
  String host = config['transport']['host'];

  Transport();
  Transport.fromConfig(Map<String, String> config) {
    if(config.containsKey('host')) {
      host = config['host'];
    }
  }

  void request(HttpMethods method, String path, params) {
    switch (method) {
      case HttpMethods.Post: {
        break;
      }
      case HttpMethods.Get:
      default: {}
    }
  }
}