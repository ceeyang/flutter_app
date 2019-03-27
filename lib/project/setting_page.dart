import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {

  final String title;

  SettingPage({ this.title });

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