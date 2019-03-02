import 'package:flutter/material.dart';
import '../model/post.dart';
/**
 * listview
 */
class ListViewDemo extends StatelessWidget {
    Widget _listitemsBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        children: <Widget>[
          Image.network(posts[index].imageUrl),
          SizedBox(height: 16.0),
          Text(
            posts[index].author,
            style: Theme.of(context).textTheme.title,
          ),
          Text(
            posts[index].title,
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
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: _listitemsBuilder,
    );
  }
}
