import 'package:flutter/material.dart';
import 'package:flutter_study/model/home_list_bean.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text(
            "Study_flutter",
          ),
          elevation: 0.0,
        ),
        body: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {

  Widget _listItemBuilder(BuildContext context,int index){
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.network(posts[index].imageUrl),
          SizedBox(height: 16.0,),
          Text(posts[index].title,style: Theme.of(context).textTheme.title,),
          Text(posts[index].author,style: Theme.of(context).textTheme.subhead,),
          SizedBox(height: 16.0,),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: _listItemBuilder,
        itemCount: posts.length,),
    );
  }
}
