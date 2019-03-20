import 'package:flutter/material.dart';
import 'package:flutter_app/model/post.dart';

class DiscoverPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CustomScrollView(

      slivers: <Widget>[
        SliverAppBar(
          title: Text("发现"),
          floating: true,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed: () => debugPrint('discover search btn did click'),)
          ],
        ),
        SliverPadding(
          padding: EdgeInsets.all(15.0),
          sliver: SliverListDemo(),
        ),
      ],
    );
  }
}



class SliverListDemo extends StatelessWidget {

  Widget _discoverGridBuilder (BuildContext context, int index) {
    return Padding(
      padding: EdgeInsets.only(bottom: 32.0),
      child: Material(
        borderRadius: BorderRadius.circular(10.0),
        elevation: 14.0,
        shadowColor: Colors.grey.withOpacity(0.5),
        clipBehavior: Clip.hardEdge,
        child: Stack(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 16/9,
              child: Image.network(
                posts[index].imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 32.0,
              left: 32.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    posts[index].title,
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white
                    ),
                  ),
                  Text(
                    posts[index].author,
                    style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.white
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
          return _discoverGridBuilder(context, index);
        },
        childCount: posts.length,
      ),
    );
  }
}

class SliverGridDemo extends StatelessWidget {

  Widget _discoverGridBuilder (BuildContext context, int index) {
    return Padding(
      padding: EdgeInsets.only(bottom: 32.0),
      child: Material(
        borderRadius: BorderRadius.circular(12.0),
        elevation: 14.0,
        shadowColor: Colors.grey.withOpacity(0.5),
        child: Stack(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 16/9,
              child: Image.network(
                posts[index].imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 32.0,
              left: 32.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    posts[index].title,
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white
                    ),
                  ),
                  Text(
                    posts[index].author,
                    style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.white
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        crossAxisSpacing: 15.0,
        mainAxisSpacing: 15.0,
      ),
      delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
          return Container(
            child: _discoverGridBuilder(context, index),
          );
        },
        childCount: posts.length,
      ),
    );
  }
}

