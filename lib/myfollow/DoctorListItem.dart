import 'package:flutter/material.dart';
import 'package:flutter_study/myfollow/Doctor.dart';

class DoctorListItem extends StatelessWidget {
  final Doctor doctor;

  DoctorListItem({Key key, this.doctor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15,right: 15,top: 15),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 15),
            child: Row(
              children: <Widget>[
                ClipOval(
                  child: Image.network(
                    doctor.avatar,
                    width: 45,
                    height: 45,
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        doctor.name,
                        style: TextStyle(color: Color(0xff333740)),
                      ),
                    )),
                FlatButton(
                  child: Text("取消关注"),
                  textColor: Color(0xffa5a9ad),
                  splashColor: null,
                  highlightColor: null,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Color(0xffd1d3d6), width: 0.5),
                      borderRadius: BorderRadius.all(Radius.circular(2))),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Divider(
            height: 0.5, color: Color(0xffebebeb),
          )
        ],
      ),
    );
  }
}
