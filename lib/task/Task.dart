
import 'TaskJoinUserBean.dart';

class Task{
   String imgUrl;
   String content;
   String createTime;
   String endTime;
   String endTimeDetail;//剩余时间
   int id;
   int ishot;//热门
   int istop;
   int limitNumber;
   double money;//钱
   int partInNumber;//参与人数
   int points;//积分
   int relationFactId;
   String relationFactName;
   int relationType;
   String shareId;
   String shareUrl;
   String title;

   bool answer;
   bool answerFull;
   String categoryName;
   bool finished;
   int isend;
   int restNumber;
   int ruleId;
   int selectNumber;
   int sort;
   int taskQuestionnaireId;
   int type;
   List<TaskJoinUserBean> users;

  /**
   * 我参与得我抢单增加的字段
   */
  int isofflinePayment;
  int isqualification;
  int tag;
  int taskCount;


  String footerName;
}