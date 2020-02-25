import 'package:flutter/material.dart';

import '../screens/home.dart';
import '../screens/login.dart';
import '../services/service-locator.dart';
import '../services/transport.dart';
import '../enums/service-names.dart';

class Application extends StatelessWidget {

  Application() {
    ServiceLocator.setService(ServiceNames.Transport, new Transport());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) {
          return LoginScreen();
        },
        '/home': (BuildContext context) {
          return HomeScreen();
        }
      }
    );
  }
}