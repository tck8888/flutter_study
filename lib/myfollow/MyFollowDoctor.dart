import 'package:flutter/material.dart';
import 'package:flutter_study/network/Api.dart';
import 'package:flutter_study/myfollow/Doctor.dart';
import 'package:flutter_study/myfollow/DoctorListItem.dart';

class MyFollowDoctor extends StatefulWidget {
  @override
  _MyFollowDoctorState createState() => _MyFollowDoctorState();
}

class _MyFollowDoctorState extends State<MyFollowDoctor> {
  int pages = 1;
  int pageSize = 20;
  Map<String, dynamic> map = {'pages': 1, 'pageSize': 20};
  List<Doctor> modules = [];

  Future<void> fetchData() async {
    var responseJson = await Api.post("myFollow/doctor/list", params: map);
    List<Doctor> modules = [];
    responseJson.forEach((data) {
      modules.add(Doctor.fromJson(data));
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
            itemCount: modules.length,
            itemBuilder: (BuildContext context, int index) {
              return buildModule(context, modules[index]);
            }),
        onRefresh: fetchData);
  }

  Widget buildModule(BuildContext context, Doctor doctor) {
    return DoctorListItem(doctor: doctor);
  }
}
