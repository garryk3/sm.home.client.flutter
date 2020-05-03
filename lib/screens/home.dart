import 'package:flutter/material.dart';

import '../widgets/header.dart';
import '../services/service-locator.dart';
import '../services/transport.dart';
import '../enums/service-names.dart';

import '../test-widgets/list.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen();

  createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
    int counter = 0;
    List<String> data = [];
    final Transport transport = ServiceLocator.getService(ServiceNames.Transport);

    HomeScreenState();

    void testFetch() async {
      counter++;
      final response = await transport.request('GET', 'photos/$counter');
      if(response.hasError()) {
        print('Error: ' + response.error);
      }
      print('response: ${response.body}');
      setState(() {
        data.add(response.body['url']);
      });
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: Header(),
        body: ImageList(data),
        floatingActionButton: FloatingActionButton(
          onPressed: testFetch,
          child: Icon(Icons.add)
        ),
      );
    }
}