import 'package:flutter/material.dart';
import 'demo/bottom_navigation_bar_demo.dart';
import 'demo/list_view_demo.dart';
import 'demo/base_demo.dart';
import 'demo/LayoutDemo.dart';
import 'demo/view_demo.dart';
import 'demo/demo_list.dart';

import 'project/about_page.dart';
import 'package:flutter_app/project/setting_page.dart';
import 'project/login_page.dart';

import 'project/bottom_tabbar.dart';

/// 原来写法
//void main() {
//  runApp(
//    App()
//  );
//}

/// 程序入口
void main() => runApp(NewApp());

class NewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      /// 关闭 debug 标签
      debugShowCheckedModeBanner: true,
      /// 返回主页面
      home: BottomTabBarWidget(),
      /// 自定义主题
      theme: ThemeData(
        /// 设置主题颜色
        primaryColor: Colors.deepPurple,
        /// 设置高亮状态颜色
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        /// 设置水波纹颜色
        splashColor: Colors.white30,
      ),
      routes: {
        '/about': (context) => AboutPage(title: "About",),
        '/setting': (context) => SettingPage(title: "About",),
        '/login': (context) => LoginPage(),
        '/demo_list': (context) => DemoList(),
      },
    );
  }
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      /// Scaffold : 脚手架
//      home: new Main(),
      initialRoute: "/",
      routes: {
        "/": (context) => Main(),
      },
      /// 不显示右上角 debug 标签
      debugShowCheckedModeBanner: false,
      /// 自定义主题
      theme: ThemeData(
        /// 设置主题颜色
        primaryColor: Colors.deepPurple,
        /// 设置高亮状态颜色
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        /// 设置水波纹颜色
        splashColor: Colors.white70,
      ),
    );
  }
}


///
class Main extends StatelessWidget {

  ///
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            /// 右边按钮集合
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                tooltip: "Search Btn",
                onPressed: () => {
                debugPrint("search btn is clicked")
                },
              ),
            ],
            title: Text('This is my first flutter app'),
            elevation: 20.0,
            bottom: TabBar(
              unselectedLabelColor: Colors.black38,
              indicatorWeight: 1.0,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Colors.white,
              labelColor: Colors.white,
              tabs: <Widget>[
                Tab(icon: Icon(Icons.local_florist),),
                Tab(icon: Icon(Icons.change_history),),
                Tab(icon: Icon(Icons.directions_bike),),
                Tab(icon: Icon(Icons.view_quilt),),
              ],
            ),
          ),
          body: TabBarView(
              children: <Widget>[
                ListViewDemo(),
                BaseDemo(),
                LayoutDemo(),
                ViewDemo(),
              ],
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                UserAccountsDrawerHeader(
                  accountName: Text("Cee Yang", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),),
                  accountEmail: Text("yangxichuan2016@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage("https://resources.ninghao.org/images/say-hello-to-barry.jpg"),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue[400],
                    image: DecorationImage(
                      image: NetworkImage("https://resources.ninghao.org/images/keyclack.jpg"),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(Colors.blue[100].withOpacity(0.2), BlendMode.hardLight)
                    )
                  ),
                ),
                ListTile(
                  title: Text("Message", textAlign: TextAlign.right,),
                  trailing: Icon(Icons.message, color: Colors.black12, size: 22,),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  title: Text("Favorite", textAlign: TextAlign.right,),
                  trailing: Icon(Icons.favorite, color: Colors.black12, size: 22,),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  title: Text("Settings", textAlign: TextAlign.right,),
                  trailing: Icon(Icons.settings, color: Colors.black12, size: 22,),
                  onTap: () => Navigator.pop(context),
                ),
              ],
            ),
        ),
          bottomNavigationBar: BottomNavigationBarDemo(),
      )
    );
  }
}