import 'package:flutter/material.dart';

class LayoutStudy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ConstrainedBox(
            constraints:BoxConstraints(
              minHeight: 200,
              maxWidth: 200,
            ),
            child: Container(
              color: Color.fromRGBO(3, 54, 255, 1.0),
            ),
          )
        ],
      ),
    );
  }
}

class AspectRatioStudy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AspectRatio(
            aspectRatio: 16 / 9.0,
            child: Container(
              color: Color.fromRGBO(3, 54, 255, 1.0),
            ),
          )
        ],
      ),
    );
  }
}

class StackStudy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Stack(
            alignment: Alignment.topLeft,
            children: <Widget>[
              SizedBox(
                width: 200,
                height: 300,
                child: Container(
                  alignment: Alignment.topCenter,
                  child: Icon(
                    Icons.ac_unit,
                    color: Colors.white,
                    size: 32,
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(3, 54, 255, 1.0),
                      borderRadius: BorderRadius.circular(8.0)),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              SizedBox(
                width: 100,
                height: 100,
                child: Container(
                  child: Icon(
                    Icons.brightness_2,
                    color: Colors.white,
                    size: 32,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: RadialGradient(colors: [
                      Color.fromRGBO(7, 102, 255, 1.0),
                      Color.fromRGBO(3, 54, 255, 1.0),
                    ]),
                    color: Color.fromRGBO(3, 54, 255, 1.0),),
                ),
              ),
              Positioned(
                right: 20.0,
                top: 20.0,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 16.0),
              ),
              Positioned(
                right: 40.0,
                top: 60.0,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 18.0),
              ),
              Positioned(
                right: 20.0,
                top: 120.0,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 20.0),
              ),
              Positioned(
                right: 70.0,
                top: 180.0,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 16.0),
              ),
              Positioned(
                right: 30.0,
                top: 230.0,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 18.0),
              ),
              Positioned(
                right: 90.0,
                bottom: 20.0,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 16.0),
              ),
              Positioned(
                right: 4.0,
                bottom: -4.0,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 16.0),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon, {key, this.size = 32.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
      child: Icon(
        icon,
        size: size,
        color: Colors.white,
      ),
    );
  }
}
