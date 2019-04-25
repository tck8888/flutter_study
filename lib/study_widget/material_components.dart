import 'package:flutter/material.dart';

class MaterialComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("ceshi"),
        elevation: 0,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(title:'Button',page: ButtonDemo(),),
          ListItem(title:'FloatActionButton',page: FloatActionButtonStudy(),)
        ],
      ),
    );
  }
}

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final Widget FlatButonDemo =    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          onPressed: (){},
          child: Text("Button"),
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
        FlatButton.icon(
          icon: Icon(Icons.add),
          onPressed: (){},
          label: Text("Button"),
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );

    final Widget RaisedButtonDemo =    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          onPressed: (){},
          child: Text("Button"),
          splashColor: Colors.grey,
          elevation: 0,
          color: Theme.of(context).accentColor,
          textColor: Colors.white,
          shape: StadiumBorder(),
        ),
        SizedBox(width: 10,),
        RaisedButton.icon(
          icon: Icon(Icons.add),
          onPressed: (){},
          label: Text("Button"),
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );

    final Widget OutlineButtonDemo =    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        OutlineButton(
          onPressed: (){},
          child: Text("Button"),
          splashColor: Colors.grey[100],
          borderSide: BorderSide(
            color: Colors.black,
          ),
          textColor:Colors.black,
          shape: StadiumBorder(),
          highlightColor: Colors.grey[100],
        ),
        SizedBox(width: 10,),
        OutlineButton.icon(
          icon: Icon(Icons.add),
          onPressed: (){},
          label: Text("Button"),
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Button"),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButonDemo,
            RaisedButtonDemo,
            OutlineButtonDemo,
          ],
        ),
      ),
    );
  }
}

class _WidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("_WidgetDemo"),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

              ],
            )
          ],
        ),
      ),
    );
  }
}
class FloatActionButtonStudy extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
   final Widget _floatingActionButton=FloatingActionButton(
       onPressed: (){

       },

     child: Icon(Icons.add),
     elevation: 0,
     backgroundColor: Colors.black87,
     shape: BeveledRectangleBorder(
       borderRadius: BorderRadius.circular(30),

     ),

   );

   final _floatingActionButtonExtend =FloatingActionButton.extended(
       onPressed: (){

       },
       icon: Icon(Icons.add),
       label: Text("lllllll"),
   elevation: 0,);


    return Scaffold(
      appBar: AppBar(
        title: Text("FloatActionButtonStudy"),
        elevation: 0,
      ),
      floatingActionButton: _floatingActionButtonExtend,
    );
  }
}


class ListItem extends StatelessWidget {

  final String title;
  
  final Widget page;
  
  ListItem({key,this.title,this.page}):super(key:key);
  
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context)=>page)
        );
      },
    );
  }
}

