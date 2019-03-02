import 'package:flutter/material.dart';
import 'model/post.dart'; //导入模拟数据

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      theme: ThemeData(primaryColor: Colors.pink //主题色
      ),
    );
  }
}

class Home extends StatelessWidget {
  Widget _listitemsBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(bottom: 20),
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
          SizedBox(height: 16.0),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('故事的小黄花'),
        elevation: 0, //AppBar阴影颜色
      ),
     body: ListView.builder(
       itemCount: posts.length,
       itemBuilder: _listitemsBuilder,
     ),
    );
  }
}


