
import 'package:flutter/material.dart';
import '../model/post.dart';

class ListViewDemo extends StatelessWidget {

  /// 列表 cell
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Image.network(posts[index].imageUrl),
          SizedBox(height: 16.0),
          Text(
            posts[index].title,
            style: Theme.of(context).textTheme.title,
          ),
          Text(
            posts[index].author,
            style: TextStyle(
              fontSize: 15,
              color: Colors.yellow,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: posts.length,
        itemBuilder: _listItemBuilder
    );
  }
}