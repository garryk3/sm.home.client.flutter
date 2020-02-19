import 'package:flutter/material.dart';
import '../components/header.dart';

class Home extends StatefulWidget {}

class HomeState extends State<Home> {

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: Header(),
        floatingActionButton: FloatingActionButton(
          onPressed: () { print('test press'); },
          child: Icon(Icons.add)
        ),
      );
    }
}