import 'package:flutter/material.dart';
import 'package:flutter_study/myfollow/TrialList.dart';
import 'package:flutter_study/myfollow/TrailListItem.dart';
import 'package:flutter_study/network/Api.dart';

class MyFollowTrial extends StatefulWidget {
  @override
  _MyFollowTrialState createState() => _MyFollowTrialState();
}

class _MyFollowTrialState extends State<MyFollowTrial> {
  int pages = 1;
  int pageSize = 20;

  Map<String, dynamic> map = {'pages': 1, 'pageSize': 20};
  List<TrialList> modules = [];

  Future<void> fetchData() async {
    var responseJson = await Api.post("myFollow/trial/list", params: map);
    List<TrialList> modules = [];
    responseJson.forEach((data) {
      modules.add(TrialList.fromJson(data));
    });

    setState(() {
      this.modules = modules;
      pages = 1;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return buildModule(context, modules[index]);
        },
        itemCount: modules.length,
      ),
      onRefresh: () {
        fetchData();
      },
    );
  }

  Widget buildModule(BuildContext context, TrialList trialList) {
    return TrialListItem(trialList: trialList);
  }
}
