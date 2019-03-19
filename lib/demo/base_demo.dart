import 'package:flutter/material.dart';

class BaseDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ContainerDemo();
  }
}


/// 容器属性
class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage("https://resources.ninghao.org/images/undo.jpg"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.purple.withOpacity(0.5),
                BlendMode.lighten,
              )
          )
      ),
      child: Row(
        /// 横向位置
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(Icons.pool, size: 32.0, color: Colors.white,),
            /// 背景色
            /// color: Color.fromRGBO(3, 54, 255, 1.0),
            /// 内边距
            padding: EdgeInsets.all(10),
            /// 外边距
            margin: EdgeInsets.all(10),
            width: 120.0,
            height: 120.0,
            /// 属性
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              border: Border.all(
                color: Colors.indigoAccent[100],
                width: 3.0,
                style: BorderStyle.solid,
              ),
              /// borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0.0, 16.0),
                  color: Color.fromRGBO(16, 20, 188, 1.0),
                  blurRadius: 25.0,
                  spreadRadius: -9.0,
                ),
              ],
              ///
              shape: BoxShape.circle,
              /// 渐变  RadialGradient: 射线渐变
              gradient: LinearGradient(
                colors: [
                  Colors.blue,
                  Colors.yellow,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )
            ),
          ),
        ],
      ),
    );
  }
}


/// 富文本
class RichTextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0,
  );

  final String _title = "遥远的你";
  final String _author = "花僮";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      "$_title \n 作者: $_author \n\n七月的风\n八月的雨\n卑微的我喜欢遥远的你\n你还未来\n怎敢老去\n未来的我和你奉陪到底\n你若同意\n我一定去\n可你并不在意我的出席\n你的过去\n无法参与\n但我还是喜欢你\n遥远的你现在哪里\n生活是否如意\n花期此生只一季\n怎能错过相遇",
      textAlign: TextAlign.center,
      style: _textStyle,
    );
  }
}