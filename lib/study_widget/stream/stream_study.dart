import 'package:flutter/material.dart';

class StreamStudy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StreamStudy"),
        elevation: 0,
      ),
      body: StreamDemoHome(),
    );
  }
}

class StreamDemoHome extends StatefulWidget {
  @override
  _StreamDemoHomeState createState() => _StreamDemoHomeState();
}

class _StreamDemoHomeState extends State<StreamDemoHome> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    debugPrint("=====================create stream");
    Stream<String> _streamDemo = Stream.fromFuture(fetchData());
    debugPrint("=====================create stream listen");
    _streamDemo.listen(onData,onError:onError,onDone: onDone);
    debugPrint("=====================create stream compeleted");

  }
  void onError(error){
    debugPrint("=====================create stream onError$error");
  } void onDone(){
    debugPrint("=====================create stream onDone");
  }

  void onData(String data){
    debugPrint("=====================$data");
  }

  Future<String> fetchData() async{
    await Future.delayed(Duration(seconds: 3));
    throw "somekkkkkk";
    return 'hello tck~';
  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

