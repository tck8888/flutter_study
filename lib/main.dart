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
    return DefaultTabController(
        length: 3,
        child: Scaffold(
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
            bottom: TabBar(
                unselectedLabelColor: Colors.black38,
                indicatorColor: Colors.black54,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 1.0,
                tabs:[
              Tab(icon: Icon(Icons.local_florist),),
              Tab(icon: Icon(Icons.change_history),),
              Tab(icon: Icon(Icons.directions_bike),)
            ]),
          ),
          body: TabBarView(children: [
            Icon(Icons.local_florist,size: 128.0, color: Colors.black12,),
            Icon(Icons.change_history,size: 128.0, color: Colors.black12,),
            Icon(Icons.directions_bike,size: 128.0, color: Colors.black12,),
          ]),
        )
    );
  }
}
