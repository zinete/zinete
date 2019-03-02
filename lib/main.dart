import 'package:flutter/material.dart';
import './demo/drawer.dart';

void main() => runApp(App());


/**
 * 挂载首页
 */
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //隐藏头上浇debug图标
      home: Home(),
      theme: ThemeData(
        primaryColor: Colors.pink, //主题色
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white12 //水波纹按下的颜色
      ),
    );
  }
}

/**
 * 首页根视图
 */
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            title: Text('WWW.ZINETE.COM'),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search, color: Colors.white),
                tooltip: "搜索",
                onPressed: null,
              )
            ],
            elevation: 0, //AppBar阴影颜色
            bottom: TabBar(
              unselectedLabelColor: Colors.black38,
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 1.0,
              tabs: <Widget>[
                Tab(icon: Icon(Icons.local_activity)),
                Tab(icon: Icon(Icons.local_airport)),
                Tab(icon: Icon(Icons.local_bar)),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Icon(Icons.local_activity, size: 128, color: Colors.pink,),
              Image.network('https://www.zinete.com/images/p2.jpg'),
              Icon(Icons.local_bar, size: 128, color: Colors.pink,),
            ],
          ),
          drawer: DeawerDemo()
        ));
  }
}
