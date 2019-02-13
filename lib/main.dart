import 'package:flutter/material.dart';
import 'package:flutter_study/BottomBarWidget.dart';
import 'package:flutter_study/BottomBarWidget2.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "药研社flutter",
      theme: ThemeData.light(),
      home: BottomBarWidget(),
    );
  }
}

