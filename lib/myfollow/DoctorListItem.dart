import 'package:flutter/material.dart';
import 'package:flutter_study/myfollow/Doctor.dart';

class DoctorListItem extends StatelessWidget {
  final Doctor doctor;

  DoctorListItem({Key key, this.doctor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      color: Colors.white,
      child: Row(
        children: <Widget>[
          ClipOval(
            child: Image.network(
              doctor.avatar,
              width: 45,
              height: 45,
            ),
          ),
          Text(
            doctor.name,
            style: TextStyle(color: Color(0xff333740)),
          ),
          OutlineButton(
            child: Text("取消关注"),
            textColor: Color(0xffa5a9ad),
            shape: RoundedRectangleBorder(
                side: BorderSide(color: Color(0xffd1d3d6), width: 0.5),
                borderRadius: BorderRadius.all(Radius.circular(1))),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
