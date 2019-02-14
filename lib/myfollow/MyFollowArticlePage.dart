import 'package:flutter/material.dart';
import 'package:flutter_study/network/Api.dart';
import 'package:flutter_study/myfollow/Article.dart';
import 'package:flutter_study/myfollow/ArticleListItem.dart';

class MyFollowArticlePage extends StatefulWidget {
  @override
  _MyFollowArticlePageState createState() => _MyFollowArticlePageState();
}

class _MyFollowArticlePageState extends State<MyFollowArticlePage> {
  int pages = 1;
  int pageSize = 20;
  Map<String, dynamic> map = {'pages': 1, 'pageSize': 20};
  List<Article> modules = [];

  Future<void> fetchData() async {
    var responseJson = await Api.post("myFollow/article/list", params: map);
    List<Article> modules = [];
    responseJson.forEach((data) {
      modules.add(Article.fromJson(data));
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

  Widget buildModule(BuildContext context, Article article) {
    return ArticleListItem(article: article);
  }
}
