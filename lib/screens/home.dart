import 'package:flutter/material.dart';
import '../components/header.dart';
import '../services/transport.dart';

class Home extends StatefulWidget {
  final Transport transport;

  Home(this.transport);

  createState() {
    return HomeState(transport);
  }
}

class HomeState extends State<Home> {
    int       counter = 0;
    final Transport transport;

    HomeState(this.transport);

    void testFetch() {
      transport.request('/');
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: Header(),
        body: Text('$counter'),
        floatingActionButton: FloatingActionButton(
          onPressed: testFetch,
          child: Icon(Icons.add)
        ),
      );
    }
}