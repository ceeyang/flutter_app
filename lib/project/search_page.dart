import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {

  final String title;

  SearchPage({ this.title });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("$title"),
        elevation: 5,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("$title Page"),
            IconButton(icon: Icon(Icons.arrow_back),onPressed: () => Navigator.pop(context),)
          ],
        ),
      ),
    );
  }
}