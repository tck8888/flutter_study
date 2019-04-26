import 'package:flutter/material.dart';

import 'package:scoped_model/scoped_model.dart';

class StateManagementStudy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModel(
      model: CounterModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("StateManagementStudy"),
          elevation: 0,
        ),
        body: CounterWrapper(),
        floatingActionButton: ScopedModelDescendant<CounterModel>(
          rebuildOnChange: false,
          builder: (context, _, model) => FloatingActionButton(
                onPressed: model.increaseCount,
                child: Icon(Icons.add),
              ),
        ),
      ),
    );
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
    return ScopedModelDescendant<CounterModel>(
      builder: (context,_,model)=> ActionChip(
        label: Text("${model.count}"),
        onPressed: model.increaseCount,
      ),
    );
  }
}

class CounterProvider extends InheritedWidget {
  final int count;
  final VoidCallback increaseCount;
  final Widget child;

  CounterProvider({key, this.count, this.increaseCount, this.child})
      : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return true;
  }

  static CounterProvider of(BuildContext context) =>
      context.inheritFromWidgetOfExactType(CounterProvider);
}

class CounterModel extends Model {
  int _count=1;

  int get count => _count;

  void increaseCount() {
    _count++;
    notifyListeners();
  }
}
