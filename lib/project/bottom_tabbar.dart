import 'package:flutter/material.dart';

import 'package:flutter_app/demo/base_demo.dart';

import 'package:flutter_app/project/home_page.dart';
import 'package:flutter_app/project/mine_page.dart';
import 'package:flutter_app/project/special_page.dart';
import 'package:flutter_app/project/discover_page.dart';

class BottomTabBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MainPageWidget();
  }
}

class MainPageWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MainPageState();
  }
}


class MainPageState extends State<MainPageWidget> {

  /// 当前 index
  int _currentIndex = 0;

  /// 底部图标
  var _tabIcons = [
    Icon(Icons.home),
    Icon(Icons.folder_special),
    Icon(Icons.disc_full),
    Icon(Icons.person),
  ];

  /// 底部标题
  var _tabTitles = [
    Text("首页"),
    Text("专题"),
    Text("发现"),
    Text("我的"),
  ];

  /// 所有页面
  var _pageList = [
    HomePage(),
    SpecialPage(),
    DiscoverPage(),
    MinePage(),
  ];

  /// 列表 cell
  List<BottomNavigationBarItem> _barItembuilder(int length) {
    return List.generate(length, (int index) {
      return BottomNavigationBarItem(
        icon: _tabIcons[index],
        title: _tabTitles[index],
      );
    });
  }

  /// 底部 tabbar 点击事件
  void _onTapHandler(int index) {
    setState(() {
      this._currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Theme.of(context).primaryColor,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: _onTapHandler,
        items: _barItembuilder(_tabIcons.length)
      ),
    );
  }
}
