import 'package:flutter/material.dart';

class FormStudy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
          data: Theme.of(context).copyWith(primaryColor: Colors.black),
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //TextFieldStudy()
                RegisterFormStudy(),
              ],
            ),
          )),
    );
  }
}

class RegisterFormStudy extends StatefulWidget {
  @override
  _RegisterFormStudyState createState() => _RegisterFormStudyState();
}

class _RegisterFormStudyState extends State<RegisterFormStudy> {
  final registerFormKey = GlobalKey<FormState>();
String username,password;
bool autovalidate=false;


void _submit(){
  if(registerFormKey.currentState.validate()){
  registerFormKey.currentState.save();
Scaffold.of(context).showSnackBar(
  SnackBar(content: Text('Registering....'))
);
  }else{
    setState(() {
      autovalidate=true;
    });
  }
}

String validatorUsername(String value){
if(value.isEmpty){
  return "Username不能为空";
}
return null;
  }

  String validatorPassword(String value){
    if(value.isEmpty){
      return "Password不能为空";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerFormKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: "Username",
                helperText: ''
            ),

            onSaved: (value){
            username = value;
            },
            validator: validatorUsername,
            autovalidate: autovalidate,
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Password",
              helperText: ''
            ),
            onSaved: (value){
              password = value;
            },
            validator: validatorPassword,
            autovalidate: autovalidate,
          ),
          SizedBox(
            height: 32,
          ),
          Container(
            width: double.infinity,
            child: RaisedButton(
              onPressed:_submit,
              color: Theme.of(context).accentColor,
              child: Text(
                'Register',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              elevation: 0,
            ),
          ),
        ],
      ),
    );
  }
}

class TextFieldStudy extends StatefulWidget {
  @override
  _TextFieldStudyState createState() => _TextFieldStudyState();
}

class _TextFieldStudyState extends State<TextFieldStudy> {
  final textFieldController = TextEditingController();

  @override
  void initState() {
    super.initState();
    //textFieldController.text="tck";
    textFieldController.addListener(() {
      debugPrint('===================addListener:${textFieldController.text}');
    });
  }

  @override
  void dispose() {
    textFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textFieldController,
//      onChanged: (value){
//        debugPrint('===================onChanged:${value}');
//      },
//      onSubmitted: (value){
//        debugPrint('===================onSubmitted:${value}');
//      },
      decoration: InputDecoration(
        icon: Icon(Icons.subject),
        labelText: 'Title',
        hintText: 'input title',
//        border: OutlineInputBorder(),
        // border: InputBorder.none,
        filled: true,
      ),
    );
  }
}

class ThemeStudy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor,
    );
  }
}
