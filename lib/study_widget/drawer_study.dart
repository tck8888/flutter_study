import 'package:flutter/material.dart';

class DrawerStudy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              "tck",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail:Text(
              "tck6666@163.com",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            currentAccountPicture:CircleAvatar(
              backgroundImage: NetworkImage("https://avatars3.githubusercontent.com/u/22141186?s=460&v=4"),
            ) ,
          ),
          ListTile(
            title: Text(
              "message",
              style: Theme.of(context).textTheme.title,
            ),
            leading: Icon(
              Icons.message,
              color: Colors.black12,
              size: 22.0,
            ),
            onTap: ()=>Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              "Favorite",
              style: Theme.of(context).textTheme.title,
            ),
            leading: Icon(
              Icons.favorite,
              color: Colors.black12,
              size: 22.0,
            ),
            onTap: ()=>Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              "Settings",
              style: Theme.of(context).textTheme.title,
            ),
            leading: Icon(
              Icons.settings,
              color: Colors.black12,
              size: 22.0,
            ),
            onTap: ()=>Navigator.pop(context),
          )
        ],
      ),
    );
  }
}
