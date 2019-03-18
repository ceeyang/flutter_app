import 'package:flutter/material.dart';
import 'model/post.dart';

//void main() {
//  runApp(
//    App()
//  );
//}

void main() => runApp(App());


class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      /// Scaffold : 脚手架
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {

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
            style: Theme.of(context).textTheme.subhead,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('This is my first flutter app'),
        elevation: 20.0,
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
          itemCount: posts.length,
          itemBuilder: _listItemBuilder
      ),
    );
  }
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text(
        'hello word lala',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 20,
          color: Colors.green,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
