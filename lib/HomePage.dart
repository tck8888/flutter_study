import 'package:flutter/material.dart';
import 'package:flutter_study/myfollow/MyFollowArticlePage.dart';
import 'package:flutter_study/myfollow/MyFollowDoctor.dart';
import 'package:flutter_study/myfollow/MyFollowTrial.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 1, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: ConstrainedBox(
          constraints: BoxConstraints.expand(height: 50),
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: <Widget>[
              Text("我的关注",
                  style: TextStyle(
                    color: Color(0xff333740),
                  )),
            ],
          ),
        ),
        bottom: TabBar(
          labelColor: Color(0xff333740),
          unselectedLabelColor: Color(0xff848a90),
          tabs: <Widget>[
            Tab(
                child: Text(
              "临研圈",
              style: TextStyle(fontWeight: FontWeight.w700),
            )),
            Tab(
                child:
                    Text("研究者", style: TextStyle(fontWeight: FontWeight.w700))),
            Tab(
                child:
                    Text("试验", style: TextStyle(fontWeight: FontWeight.w700)))
          ],
          indicatorColor: Color(0xff2CC17B),
          indicatorSize: TabBarIndicatorSize.label,
          controller: _tabController,
        ),
      ),
      body: TabBarView(
        children: <Widget>[
          MyFollowArticlePage(),
          MyFollowDoctor(),
          MyFollowTrial(),
        ],
        controller: _tabController,
      ),
    );
  }
}
