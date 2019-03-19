import 'package:flutter/material.dart';
import '../model/post.dart';

class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridViewBuilderDemo();
  }
}

/// 自定义个数
class GridViewBuilderDemo extends StatelessWidget {

  Widget _gridItemsBuilder(BuildContext context, int index) {
    return Container(
      child: Image.network(
        posts[index].imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
      padding: EdgeInsets.all(15.0),
      /// 项目个数
      itemCount: posts.length,
      /// 项目item
      itemBuilder: _gridItemsBuilder,
      /// 滚动方向
      scrollDirection: Axis.vertical,
      /// 代理
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        // crossAxisCount: 3,
        maxCrossAxisExtent: 150,
        crossAxisSpacing: 15.0,
        mainAxisSpacing: 15.0,
      ),
    );
  }
}


/// 用于创建固定个数
class GridViewExtentDemo extends StatelessWidget {

  List<Widget> _buildTiles(int length) {
    return List.generate(length, (int index) {
      return Container(
        color: Colors.grey[100],
        alignment: Alignment.center,
        child: Text(
          'item $index',
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.extent(
      maxCrossAxisExtent: 200,
      /// 副轴间距
      crossAxisSpacing: 15.0,
      /// 主轴间距
      mainAxisSpacing: 15.0,
      /// items
      children: _buildTiles(1000),
      /// 滚动方向
      scrollDirection: Axis.vertical,
    );
  }
}

class GridViewCountDemo extends StatelessWidget {

  List<Widget> _buildTiles(int length) {
    return List.generate(length, (int index) {
      return Container(
        color: Colors.grey[100],
        alignment: Alignment.center,
        child: Text(
          'item $index',
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      /// 主轴上最大显示数量
      crossAxisCount: 3,
      /// 副轴间距
      crossAxisSpacing: 15.0,
      /// 主轴间距
      mainAxisSpacing: 15.0,
      /// items
      children: _buildTiles(1000),
      /// 滚动方向
      scrollDirection: Axis.vertical,
    );
  }
}

/// PageView.Builder
class PageViewBuilderDemo extends StatelessWidget {
  Widget _pageItemBuilder(BuildContext context, int index) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(posts[index].imageUrl, fit: BoxFit.fill,),
        ),
        Positioned(
          bottom: 15.0,
          left: 15.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                posts[index].title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                posts[index].author,
                style: TextStyle(color: Colors.grey[50]),
              )
            ],
          ),
        ),
      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,
    );
  }
}

class PageViewDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView(
      /// page enable
      pageSnapping: true,
      /// 倒置
      reverse: false,
      /// 滚动方向
      scrollDirection: Axis.horizontal,
      /// 滚动回调
      onPageChanged: (currentPage) => debugPrint('Page: $currentPage'),
      /// 控制器
      controller: PageController(
        /// 设置默认显示页面
        initialPage: 1,
        /// 是否记录 index 值
        keepPage: false,
        /// 页面占用比例
        viewportFraction: 0.85,
      ),
      children: <Widget>[
        Container(
          color: Colors.green[100],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'ONE',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.yellow,
            ),
          ),
        ),
        Container(
          color: Colors.yellow[100],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'Two',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ),
        Container(
          color: Colors.brown[100],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'Three',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.yellow,
            ),
          ),
        ),
      ],
    );
  }
}