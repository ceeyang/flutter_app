import 'package:flutter/material.dart';
import '../model/post.dart';

class DiscoverDetailPage extends StatelessWidget {

  final String title;
  final Post post;

  DiscoverDetailPage({
    this.title,
    @required this.post
  });


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text("${post.title}"),
            expandedHeight: 180,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: false,
              title: Text("${post.title}"),
              background: Image.network(
                "${post.imageUrl}",
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}



class MinePageTest extends StatelessWidget {
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
