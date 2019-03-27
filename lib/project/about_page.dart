import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {

  final String title;

  AboutPage({ this.title });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("$title"),
      ),
    );
  }
}