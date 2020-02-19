import 'package:flutter/material.dart';
import '../components/header.dart';

class Home extends StatefulWidget {
  createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  int counter = 0;

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: Header(),
        body: Text('$counter'),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              counter++;
            });
          },
          child: Icon(Icons.add)
        ),
      );
    }
}