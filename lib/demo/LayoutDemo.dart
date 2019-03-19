import 'package:flutter/material.dart';


class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ConstrainedBoxDemo();
  }
}

/// 带有最大最小值的容器
class ConstrainedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: 200.0,
              maxWidth: 50.0,
            ),
            child: Container(
              color: Colors.purple,
            ),
          ),
        ],
      ),
    );
  }
}

/// flex 布局
class AlignmentDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: <Widget>[
          IconBadge(Icons.pool),
          IconBadge(Icons.label),
          IconBadge(Icons.settings),
        ],
      ),
    );
  }
}

/// 比例容器
class AspectRatioDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AspectRatio(
            aspectRatio: 1.0/1.0,
            child: Container(
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}

/// 可以使用 SizedBox 自定义间距, Stack demo
class SizedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        /// 主轴
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Stack(
            children: <Widget>[
              SizedBox(
                child: Container(
                  width: 330.0,
                  height: 220.0,
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(3, 53, 255, 1.0),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Icon(Icons.ac_unit, color: Colors.white,),
                ),
              ),

              /// SizeBox 可以用来设置间隔
              SizedBox(
                height: 30.0,
              ),

              SizedBox(
                child: Container(
                  width: 80.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(3, 53, 255, 1.0),
                    shape: BoxShape.circle,
                    gradient: RadialGradient(
                      colors: [
                        Color.fromRGBO(8, 107, 255, 1.0),
                        Color.fromRGBO(4, 54, 255, 1.0),
                      ],
                    ),
                  ),
                  child: Icon(Icons.mood, color: Colors.white,),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/// 自定义组件
class IconBadge extends StatelessWidget {

  /// 参数
  final IconData icon;
  final double size;

  /// 设置默认属性
  IconBadge(this.icon, {
    this.size = 32.0
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Icon(icon, size: size, color: Colors.white,),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}