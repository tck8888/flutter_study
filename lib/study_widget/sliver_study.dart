import 'package:flutter/material.dart';
import 'package:flutter_study/model/home_list_bean.dart';

class SliverStudy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverSafeArea(
              sliver: SliverPadding(padding: EdgeInsets.all(8),
          sliver: SliverListStudy(),))
           ,
        ],
      ),
    );
  }
}

class SliverGridStudy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
        delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
              return Container(
                child: Image.network(posts[index].imageUrl ,fit: BoxFit.cover,),
              );
            },
            childCount: posts.length),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,childAspectRatio: 1.0));
  }
}

class SliverListStudy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
              return Padding(
                padding:  EdgeInsets.only(bottom: 32.0),
                child: Material(
                  clipBehavior: Clip.antiAlias,
                  borderRadius: BorderRadius.circular(12.0),
                  elevation: 14,
                  shadowColor: Colors.grey.withOpacity(0.5),
                  child: Stack(
                    children: <Widget>[
                      AspectRatio(
                        aspectRatio: 16/9,
                        child: Image.network(
                          posts[index].imageUrl ,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        top: 32,
                        left: 32,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              posts[index].title,
                              style: TextStyle(fontSize: 20,color: Colors.white),),
                            Text(
                                posts[index].author,
                                style: TextStyle(fontSize: 13,color: Colors.white),),
                          ],
                        ),

                      )
                    ],
                  ),
                ),
              );
            },
            childCount: posts.length),);
  }
}
