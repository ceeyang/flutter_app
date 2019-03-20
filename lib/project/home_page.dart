import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.search), onPressed: () => debugPrint('hahahha ')),
        /// 右边按钮集合
        actions: <Widget>[
          IconButton(icon: Icon(Icons.file_download), tooltip: "Search Btn", onPressed: () => debugPrint("search btn is clicked")),
          IconButton(icon: Icon(Icons.history), tooltip: "Search Btn", onPressed: () => debugPrint("history btn is clicked")),
        ],
        title: Text('首页'),
        elevation: 20.0,
      ),
      body: HomePageView(),
    );
  }
}

class HomePageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.purple,
    );
  }
}