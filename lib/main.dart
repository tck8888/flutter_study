import 'package:flutter/material.dart';
import 'package:flutter_study/study_widget/drawer_study.dart';
import 'package:flutter_study/study_widget/bottom_navigation_bar_study.dart';
import 'package:flutter_study/study_widget/list_view_study.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.yellow,
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.white70,
        ),
        home: Home());
  }
}

class Home extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
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
              bottom: TabBar(
                  unselectedLabelColor: Colors.black38,
                  indicatorColor: Colors.black54,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorWeight: 1.0,
                  tabs: [
                    Tab(
                      icon: Icon(Icons.local_florist),
                    ),
                    Tab(
                      icon: Icon(Icons.change_history),
                    ),
                    Tab(
                      icon: Icon(Icons.directions_bike),
                    )
                  ])),
          body: TabBarView(children: [
            ListViewStudy(),
            Icon(
              Icons.change_history,
              size: 128.0,
              color: Colors.black12,
            ),
            Icon(
              Icons.directions_bike,
              size: 128.0,
              color: Colors.black12,
            ),
          ]),
          drawer: DrawerStudy(),
          bottomNavigationBar: BottomNavigationBarStudy(),
        ));
  }
}
