import 'package:flutter/material.dart';
import 'material_components.dart';

class DemoList extends StatelessWidget {

  final _listItemTitles = [
    "Float Action Button"
  ];
  final _listItemPages = [
    MaterialComponents(),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("Material Components"),
        ),
        body: ListView(
          children: <Widget>[
            ListItem(title: _listItemTitles[0],page: _listItemPages[0],)
          ],
        ),
    );
  }
}



class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({
    this.title,
    this.page,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTile(
      title: Text("$title"),
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => page)
        );
      },
    );
  }
}