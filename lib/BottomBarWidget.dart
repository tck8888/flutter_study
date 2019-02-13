import 'package:flutter/material.dart';
import 'package:flutter_study/HomePage.dart';
import 'package:flutter_study/ToolsPage.dart';
import 'package:flutter_study/SitePage.dart';
import 'package:flutter_study/MessagePage.dart';
import 'package:flutter_study/MyPage.dart';

import 'EachView.dart';

class BottomBarWidget extends StatefulWidget {
  @override
  _BottomBarWidgetState createState() => _BottomBarWidgetState();
}

class _BottomBarWidgetState extends State<BottomBarWidget> {
  int _tabIndex = 0;
  var tabTitles = ["首页", "工具", "中心", "消息", "我的"];
  var tabSelectedImage = [
    "images/home_tab_selected.png",
    "images/home_tab_tool_selected.png",
    "images/home_tab_site_selected.png",
    "images/home_tab_message_selected.png",
    "images/home_tab_me_selected.png"
  ];
  var tabUnSelectedImage = [
    "images/home_tab_unselected.png",
    "images/home_tab_tool_unselected.png",
    "images/home_tab_site_unselected.png",
    "images/home_tab_message_unselected.png",
    "images/home_tab_me_unselected.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: <Widget>[
          HomePage(),
          ToolsPage(),
          SitePage(),
          MessagePage(),
          MyPage()
        ],
        index: _tabIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: getTabIcon(0), title: getTabTitle(0)),
          BottomNavigationBarItem(icon: getTabIcon(1), title: getTabTitle(1)),
          BottomNavigationBarItem(icon: getTabIcon(2), title: getTabTitle(2)),
          BottomNavigationBarItem(icon: getTabIcon(3), title: getTabTitle(3)),
          BottomNavigationBarItem(icon: getTabIcon(4), title: getTabTitle(4)),
        ],
        currentIndex: _tabIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _tabIndex = index;
          });
        },
      ),
    );
  }

  Text getTabTitle(int index) {
    if (index == _tabIndex) {
      return Text(
        tabTitles[index],
        style: TextStyle(color: Color(0xff2CC17B)),
      );
    } else {
      return Text(tabTitles[index], style: TextStyle(color: Color(0xff999999)));
    }
  }

  Image getTabIcon(int index) {
    if (index == _tabIndex) {
      return Image.asset(
        tabSelectedImage[index],
        width: 19,
        height: 19,
      );
    } else {
      return Image.asset(
        tabUnSelectedImage[index],
        width: 19,
        height: 19,
      );
    }
  }
}
