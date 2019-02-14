class Article {
  bool like;
  int commentCount;
  String content;
  String createTime;
  int followCount;
  int followCountRandom;
  int id;
  String imgUrl;
  int likeCount;
  int likeCountRandom;
  int readCount;
  int readCountRandom;
  String remark;
  String summary;
  String title;
  String updateTime;
  int userId;
  int isdeleted; //1删除
  int status; //0禁用
  bool follow;
  int ishot;
  int istop;
  String shareUrl;

  Article.fromJson(Map<String, dynamic> data) {
    like = data['like'];
    commentCount = data['commentCount'];
    content = data['content'];
    createTime = data['createTime'];
    followCount = data['followCount'];
    followCountRandom = data['followCountRandom'];
    int id = data['int    id'];
    imgUrl = data['imgUrl'];
    likeCount = data['likeCount'];
    likeCountRandom = data['likeCountRandom'];
    readCount = data['readCount'];
    readCountRandom = data['readCountRandom'];
    remark = data['remark'];
    summary = data['summary'];
    title = data['title'];
    updateTime = data['updateTime'];
    userId = data['userId'];
    isdeleted = data['isdeleted'];
    status = data['status'];
    follow = data['follow'];
    ishot = data['ishot'];
    istop = data['istop'];
    shareUrl = data['shareUrl'];
  }
}
