import 'package:flutter/material.dart';
import 'package:flutter_study/myfollow/Article.dart';

class ArticleListItem extends StatelessWidget {
  final Article article;

  ArticleListItem({Key key, this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
/*  if (data.isdeleted == 1) {
            holder.tvArticleTitle.setTextColor(ContextCompat.getColor(mContext, R.color.color_cccccc));
            holder.tvArticleState.setVisibility(View.VISIBLE);
            holder.tvArticleState.setText("该帖子已被删除");
        } else if (data.status == 0) {
            holder.tvArticleTitle.setTextColor(ContextCompat.getColor(mContext, R.color.color_cccccc));
            holder.tvArticleState.setVisibility(View.VISIBLE);
            holder.tvArticleState.setText("该帖子已被禁用");
        } else {
            holder.tvArticleTitle.setTextColor(ContextCompat.getColor(mContext, R.color.color_333740));
            holder.tvArticleState.setVisibility(View.GONE);
            holder.rootView.setOnClickListener(v -> {
                if (onItemClickListener != null) {
                    onItemClickListener.onItemClick(holder.itemView, holder.getLayoutPosition(), "");
                }
            });
        }*/
/*        <TextView
            android:id="@+id/tv_article_state"
            android:layout_width="wrap_content"
            android:layout_height="@dimen/dimen_20"
            android:layout_marginStart="@dimen/dimen_12"
            android:background="@drawable/shape_corners_2dp_solid_ffff_border_d1d3d6"
            android:gravity="center_vertical"
            android:paddingStart="@dimen/dimen_7"
            android:paddingEnd="@dimen/dimen_7"
            android:textColor="@color/color_8b8f97"
            android:textSize="@dimen/sp_12"
            app:layout_constraintBottom_toBottomOf="@id/tv_praise_comment_count"
            app:layout_constraintStart_toEndOf="@id/tv_praise_comment_count"
            app:layout_constraintTop_toTopOf="@id/tv_praise_comment_count"
            tools:text="该帖子已被禁用"/>*/
}
