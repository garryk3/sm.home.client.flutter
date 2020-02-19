import 'package:flutter/material.dart';
import '../screens/home.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) {
          return Home();
        }
      }
    );
  }
}