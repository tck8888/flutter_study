import 'package:flutter/material.dart';
import 'package:flutter_study/myfollow/Article.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
class ArticleListItem extends StatelessWidget {
  final Article article;

  ArticleListItem({Key key, this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      delegate: SlidableBehindDelegate(),
      actionExtentRatio: 0.25,
      secondaryActions: <Widget>[
        Container(
    height: 109,
          color: Color(0xffff0000),
          child: Center(child: Text("删除",style: TextStyle(color: Colors.white),)),
        )
      ],
      child: Container(
        padding: EdgeInsets.only(top: 15),
        color: Colors.white,
        child: Column(children: <Widget>[
          Container(
            padding: const EdgeInsets.only(bottom: 15, left: 15, right: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 79,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          article.title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: articleStateLabelIsVisible()
                                  ? Color(0xffcccccc)
                                  : Color(0xff333740),
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: Text(
                                article.remark,
                                style: TextStyle(
                                    color: articleStateLabelIsVisible()
                                        ? Color(0xffcccccc)
                                        : Color(0xffa4a9b2)),
                              ),
                            ),
                            Offstage(
                              offstage: !articleStateLabelIsVisible(),
                              child: Container(
                                padding: EdgeInsets.only(left: 7, right: 7),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color(0xffd1d3d6), width: 0.5),
                                  borderRadius: BorderRadius.circular(2),
                                ),
                                child: Text(
                                  getText(),
                                  style: TextStyle(color: Color(0xff8b8f97)),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Offstage(
                  offstage: article.imgUrl.isEmpty,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(2),
                    child: Image.network(
                      article.imgUrl,
                      width: 110,
                      height: 79,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            ),
          ),
          Divider(
            height: 0.5,
            color: Color(0xffebebeb),
          )
        ]),
      ),
    );
  }

  String getText() {
    if (article.isdeleted == 1) {
      return "该帖子已被删除";
    } else if (article.status == 0) {
      return "该帖子已被禁用";
    } else {
      return "";
    }
  }

  bool articleStateLabelIsVisible() {
    if (article.isdeleted == 1) {
      return true;
    } else if (article.status == 0) {
      return true;
    } else {
      return false;
    }
  }
}
