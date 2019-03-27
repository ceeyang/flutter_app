import 'package:flutter/material.dart';

class NavigatorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text("Home"),
              onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext content) => Page(title: "About")
                    ),
                  );
              },
            ),
            FlatButton(
              child: Text("About"),
            ),
          ],
        ),
      ),
    );
  }
}

class Page extends StatelessWidget {

  final String title;

  Page({
    this.title
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        
      ),
      body: Center(
        child: Text("$title Page"),
      ),
    );
  }
}