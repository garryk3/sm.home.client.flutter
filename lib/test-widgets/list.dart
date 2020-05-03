import 'package:flutter/material.dart';

class ImageList extends StatelessWidget {
  final List<String> list;
  ImageList(this.list);

  Widget build(context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, int index) {
        return buildImage(list[index]);
      }
    );
  }

  Widget buildImage(String url) {
    return Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey)
          ),
          padding: EdgeInsets.all(16),
          margin: EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              Image.network(url),
              Padding(
                child: Text('Title: $url'),
                padding: EdgeInsets.only(
                  top: 16
                )
              )
            ]
          )
        );
  }
}
