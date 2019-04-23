import 'package:flutter/material.dart';
import 'package:flutter_study/study_widget/list_view_study.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.yellow),
        home: Home());
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
          ),
          onPressed: () => {debugPrint('Navigation button is pressed')},
          tooltip: "Navigation",
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
            ),
            onPressed: () => {debugPrint('search button is pressed')},
            tooltip: "Search",
          ),
        ],
        title: Text(
          "Study_flutter",
        ),
        elevation: 0.0,
      ),
      body: null,
    );
  }
}
