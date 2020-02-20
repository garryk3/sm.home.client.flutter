import 'package:flutter/material.dart';

import '../screens/home.dart';
import '../services/service-locator.dart';
import '../services/transport.dart';

class Application extends StatelessWidget {
  ServiceLocator services;
  Transport transport;

  Application() {
    services = new ServiceLocator();
    services.setService(ServiceNames.Transport, new Transport());
    transport = services.getService(ServiceNames.Transport);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) {
          return Home(transport);
        }
      }
    );
  }
}