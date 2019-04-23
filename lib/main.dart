import 'package:flutter/material.dart';
import 'package:flutter_study/study_widget/list_view_study.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: Scaffold(

        appBar: AppBar(
          title: Text(
            "Study_flutter",
          ),
          elevation: 0.0,
        ),
        body: ListViewStudy(),
      ),
    );
  }
}

