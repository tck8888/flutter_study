import 'package:flutter/material.dart';

class BasicStudy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ContainerStudy();
  }
}

class ContainerStudy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image:
            NetworkImage("http://qiniu.yaoyanshe.com/36471548057116_.pic.jpg"),
        alignment: Alignment.topCenter,
            fit: BoxFit.cover,
      )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0),
                //borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0.0, 16.0),
                    color: Color.fromRGBO(16, 20, 188, 1.0),
                    blurRadius: 25,
                    spreadRadius: -9.0,
                  ),
                ],
                shape: BoxShape.circle,
//              gradient: RadialGradient(colors: [
//                Color.fromRGBO(7, 102, 255, 1.0),
//                Color.fromRGBO(3, 28, 128, 1.0),
//              ]),
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(7, 102, 255, 1.0),
                  Color.fromRGBO(3, 28, 128, 1.0),
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            child: Icon(
              Icons.pool,
              size: 32.0,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}

class RichTextStudy extends StatelessWidget {
  final String _author = "李白";
  final String _title = "将进酒·君不见";
  final String _desc = "君不见，黄河之水天上来，奔流到海不复回。\n"
      "君不见，高堂明镜悲白发，朝如青丝暮成雪。\n"
      "人生得意须尽欢，莫使金樽空对月。\n"
      "天生我材必有用，千金散尽还复来。\n"
      "烹羊宰牛且为乐，会须一饮三百杯。\n"
      "岑夫子，丹丘生，将进酒，杯莫停。\n"
      "与君歌一曲，请君为我倾耳听。\n"
      "钟鼓馔玉不足贵，但愿长醉不复醒。\n"
      "古来圣贤皆寂寞，惟有饮者留其名。\n"
      "陈王昔时宴平乐，斗酒十千恣欢谑。\n"
      "主人何为言少钱，径须沽取对君酌。\n"
      "五花马，千金裘，呼儿将出换美酒，与尔同销万古愁。";

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: _title,
          style: TextStyle(
              color: Colors.deepPurpleAccent,
              fontSize: 34.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w100),
          children: [
            TextSpan(
              text: _author,
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 17.0,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w100),
            )
          ]),
    );
  }
}

class NormalTextStudy extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0,
  );
  final String _author = "李白";
  final String _title = "将进酒·君不见";
  final String _desc = "君不见，黄河之水天上来，奔流到海不复回。\n"
      "君不见，高堂明镜悲白发，朝如青丝暮成雪。\n"
      "人生得意须尽欢，莫使金樽空对月。\n"
      "天生我材必有用，千金散尽还复来。\n"
      "烹羊宰牛且为乐，会须一饮三百杯。\n"
      "岑夫子，丹丘生，将进酒，杯莫停。\n"
      "与君歌一曲，请君为我倾耳听。\n"
      "钟鼓馔玉不足贵，但愿长醉不复醒。\n"
      "古来圣贤皆寂寞，惟有饮者留其名。\n"
      "陈王昔时宴平乐，斗酒十千恣欢谑。\n"
      "主人何为言少钱，径须沽取对君酌。\n"
      "五花马，千金裘，呼儿将出换美酒，与尔同销万古愁。";

  @override
  Widget build(BuildContext context) {
    return Text(
      _desc,
      textAlign: TextAlign.left,
      style: _textStyle,
    );
  }
}
