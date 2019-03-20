import 'package:flutter/material.dart';

class MinePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          actions: <Widget>[
            IconButton(icon: Icon(Icons.settings), onPressed: () => debugPrint("setting btn did click"),)
          ],
          expandedHeight: 180,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: false,
            title: Text("Cee"),
            background: Image.network(
              "https://resources.ninghao.net/images/overkill.png",
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}

