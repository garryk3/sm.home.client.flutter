// import 'dart:io';
import 'package:http/http.dart';

import '../enums/http.dart';
import '../models/http-response.dart';
import './config.dart';

class Transport {
  String url = config['transport']['host'];

  Transport();
  Transport.fromConfig(Map<String, String> config) {
    if(config.containsKey('host')) {
      url = config['host'];
    }
  }

  Future<HttpResponse> request(String method, String path, [params]) async {
    final Uri fullUrl = Uri.parse("$url/$path");
    final HttpResponse httpResponse = new HttpResponse();
    print('request path: $fullUrl');

    try {
      final response = await get(fullUrl);
      httpResponse.setSuccessResponse(response);
    } catch(error) {
      httpResponse.setError(error);
    }
    return httpResponse;
  }
}