import 'package:flutter/material.dart';
import 'package:flutter_study/myfollow/TrialList.dart';

class TrialListItem extends StatelessWidget {
  final TrialList trialList;

  TrialListItem({Key key, this.trialList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15, top: 15),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    padding: EdgeInsets.only(left: 7, right: 7),
                    child: Text(trialList.trialStatusName,
                        style: TextStyle(color: Colors.white)),
                    decoration: BoxDecoration(
                        color: getTrailStatusColor(trialList.trialStatus),
                        borderRadius: BorderRadius.all(Radius.circular(2)))),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    trialList.trialTitlePopular,
                    style: TextStyle(color: Color(0xff333740)),
                  ),
                ))
              ],
            ),
          ),
          Divider(
            height: 0.5,
            color: Color(0xffebebeb),
          )
        ],
      ),
    );
  }

  Color getTrailStatusColor(int trialStatus) {
    if (trialStatus == 1) {
      return Color(0xffa5a9ad);
    } else if (trialStatus == 3 || trialStatus == 4) {
      return Color(0xff4a90e2);
    } else if (trialStatus == 5 || trialStatus == 6) {
      return Color(0xfffd794e);
    } else {
      return Color(0xff2cc17b);
    }
  }
}
