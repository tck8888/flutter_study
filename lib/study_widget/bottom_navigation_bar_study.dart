import 'package:flutter/material.dart';

class BottomNavigationBarStudy extends StatefulWidget {
  @override
  _BottomNavigationBarStudyState createState() =>
      _BottomNavigationBarStudyState();
}

class _BottomNavigationBarStudyState extends State<BottomNavigationBarStudy> {
  int _currentIndex = 0;

  void _onTapHandle(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.black,
        currentIndex: _currentIndex,
        onTap: _onTapHandle,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.explore), title: Text("Explore")),
          BottomNavigationBarItem(
              icon: Icon(Icons.history), title: Text("History")),
          BottomNavigationBarItem(icon: Icon(Icons.list), title: Text("List")),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text("My")),
        ]);
  }
}
