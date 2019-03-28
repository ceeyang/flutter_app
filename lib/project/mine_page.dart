import 'package:flutter/material.dart';
import 'package:flutter_app/project/setting_page.dart';

class MinePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                Navigator.pushNamed(context, "/setting");
              },
            )
          ],
          expandedHeight: 180,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: false,
            title: Container(
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed("/login");
                    },
                    child: CircleAvatar(
                      backgroundImage: new NetworkImage("http://p2.qhimg.com/dr/200_200_/t0168bce73440d85200.jpg",),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text("Cee Yang"),
                ],
              ),
            ),
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

