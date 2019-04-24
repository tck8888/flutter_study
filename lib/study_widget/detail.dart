import 'package:flutter/material.dart';
import 'package:flutter_study/model/home_list_bean.dart';

class Detail extends StatelessWidget {
  final HomeListBean homeListBean;

  Detail({key, @required this.homeListBean}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(homeListBean.title),
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          Image.network(homeListBean.imageUrl),
          Container(
            padding: EdgeInsets.all(32),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("${homeListBean.title}",style: Theme.of(context).textTheme.title,),
                Text("${homeListBean.author}",style: Theme.of(context).textTheme.subhead,),
                SizedBox(height: 32,),
                Text("${homeListBean.description}",style: Theme.of(context).textTheme.body1,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
