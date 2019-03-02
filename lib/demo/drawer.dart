import 'package:flutter/material.dart';

class DeawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName:
                Text('我是渣渣水', style: TextStyle(fontWeight: FontWeight.bold)),
            accountEmail: Text('zhenghui@zinete.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage:
                  NetworkImage('https://www.zinete.com/images/p2.jpg'),
            ),
            decoration: BoxDecoration(
                color: Colors.pink,
                image: DecorationImage(
                    image: NetworkImage('https://www.zinete.com/images/p2.jpg'),
                    fit: BoxFit.cover, //设置图像填充模式
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.4), BlendMode.hardLight))),
          ),
          ListTile(
            title: Text('我的', textAlign: TextAlign.right),
            trailing: Icon(Icons.message, color: Colors.pink, size: 22.0),
            onTap: () => Navigator.pop(context), //关闭抽屉
          ),
          ListTile(
            title: Text('项目', textAlign: TextAlign.right),
            trailing: Icon(Icons.work, color: Colors.pink, size: 22.0),
            onTap: () => Navigator.pop(context), //关闭抽屉
          ),
          ListTile(
            title: Text('关于我', textAlign: TextAlign.right),
            trailing: Icon(Icons.add_box, color: Colors.pink, size: 22.0),
            onTap: () => Navigator.pop(context), //关闭抽屉
          )
        ],
      ),
    );
  }
}
