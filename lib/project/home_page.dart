import 'package:flutter/material.dart';
import '../model/post.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () => Navigator.pushNamed(context, '/demo_list')),
        /// 右边按钮集合
        actions: <Widget>[
          IconButton(icon: Icon(Icons.file_download), tooltip: "Search Btn", onPressed: () => debugPrint("search btn is clicked")),
          IconButton(icon: Icon(Icons.history), tooltip: "Search Btn", onPressed: () => debugPrint("history btn is clicked")),
        ],
        title: Text('首页', textAlign: TextAlign.center,),
        elevation: 20.0,
      ),
      body: HomePageView(),
    );
  }
}

class HomePageView extends StatelessWidget {

  /// 列表 cell
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(10),
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16/9,
                child: Image.network(posts[index].imageUrl, fit: BoxFit.fill,),
              ),
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
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                splashColor: Colors.white.withOpacity(0.3),
                highlightColor: Colors.white.withOpacity(0.1),
                onTap: () {
                  debugPrint("tap");
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: ListView.builder(
        itemCount: posts.length,
        itemBuilder: _listItemBuilder,
      ),
    );
  }
}