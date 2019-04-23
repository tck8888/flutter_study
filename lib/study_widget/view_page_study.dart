import 'package:flutter/material.dart';
import 'package:flutter_study/model/home_list_bean.dart';
class ViewPageStudy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridViewBuildStudy();
  }


}

class GridViewBuildStudy extends StatelessWidget {

  Widget _buildItem(BuildContext context,int index){
    return Container(
      child: Image.network(posts[index].imageUrl,fit: BoxFit.cover,),
    );
  }
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(4.0),
itemCount: posts.length,
      itemBuilder: _buildItem,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8
      ),
    );
  }
}

class GridViewExtentStudy extends StatelessWidget {

  List<Widget> _buildItem(int count){

    return List.generate(count, (int index){
      return Container(
        color: Colors.grey[300],
        alignment: Alignment.center,
        child: Text("item${index}",style: TextStyle(
            color: Colors.grey,
            fontSize: 18
        ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 150,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      children: _buildItem(100),
    );
  }
}

class GridViewCountStudy extends StatelessWidget {

  List<Widget> _buildItem(int count){

    return List.generate(count, (int index){
      return Container(
        color: Colors.grey[300],
        alignment: Alignment.center,
        child: Text("item${index}",style: TextStyle(
            color: Colors.grey,
            fontSize: 18
        ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      children: _buildItem(100),
    );
  }
}

class PageViewStudy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      reverse: true,
      onPageChanged: (currentPage)=>debugPrint("currentPage is ${currentPage}"),
      controller: PageController(
          initialPage: 0,
          keepPage: false

      ),
      children: <Widget>[
        Container(
          color: Colors.brown[900],
          alignment: Alignment.center,
          child: Text("one",
            style: TextStyle(fontSize: 32,color: Colors.white),),
        ),
        Container(
          color: Colors.grey[900],
          alignment: Alignment.center,
          child: Text("two",
            style: TextStyle(fontSize: 32,color: Colors.white),),
        ),
        Container(
          color: Colors.blueGrey[900],
          alignment: Alignment.center,
          child: Text("three",
            style: TextStyle(fontSize: 32,color: Colors.white),),
        ),
      ],
    );
  }
}

