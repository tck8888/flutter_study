import 'package:flutter/material.dart';

class StateManagementStudy extends StatefulWidget {
  @override
  _StateManagementStudyState createState() => _StateManagementStudyState();
}

class _StateManagementStudyState extends State<StateManagementStudy> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return CounterProvider(
      count: count,
      increaseCount: _increaseCount,
      child: Scaffold(
        appBar: AppBar(
          title: Text("StateManagementStudy"),
          elevation: 0,
        ),
        body: CounterWrapper(),
        floatingActionButton: FloatingActionButton(
          onPressed:_increaseCount,
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  void _increaseCount(){
    setState(() {
      count++;
    });
  }
}

class CounterWrapper extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Counter(),
    );
  }
}

class Counter extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final int count=CounterProvider.of(context).count;
    final VoidCallback increaseCount=CounterProvider.of(context).increaseCount;
    return ActionChip(label: Text("$count"),onPressed: increaseCount,);
  }
}

class CounterProvider extends InheritedWidget{

  final int count;
  final VoidCallback increaseCount;
  final Widget child;
  CounterProvider({
    key,
    this.count,
    this.increaseCount,
    this.child}) : super(key: key,child:child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return true;
  }

  static CounterProvider of(BuildContext context)=>
      context.inheritFromWidgetOfExactType(CounterProvider);


}