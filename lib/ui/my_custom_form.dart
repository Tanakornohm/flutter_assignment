import 'package:flutter/material.dart';
import 'register.dart';
import 'main_page.dart';

class MyCustomForm extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyCustomFormState();
  }

}

class MyCustomFormState extends State<MyCustomForm>{
  final alter = GlobalKey<ScaffoldState>();

  final TextEditingController email_tf = TextEditingController();
  final TextEditingController pass_tf = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: alter,
      body: Form(
      child: ListView(
        children: <Widget>[
          Image.asset(
            'resources/panda.png'
            , height: 200),
          TextFormField(
            decoration: InputDecoration(

              hintText: 'User id',
              icon: Icon(Icons.person)
              
            ),
            keyboardType: TextInputType.emailAddress,
            onSaved: (value) => print(value),
            controller: email_tf,
          ),TextFormField(
            decoration: InputDecoration(

              hintText: 'Password',
              icon: Icon(Icons.lock),
            ),
            obscureText: true,
            keyboardType: TextInputType.text,
            onSaved: (value) => print(value),
            controller: pass_tf,
          ),
          RaisedButton(
            child: Text("continue"),
            onPressed: () {
              if (email_tf.text.isEmpty == true || pass_tf.text.isEmpty == true) {
                alter.currentState.showSnackBar(SnackBar(content: Text('กรุณาระบุ user or password')));
              }else if (email_tf.text == 'admin' && pass_tf.text == 'admin') {
                alter.currentState.showSnackBar(SnackBar(content: Text('user or password ไม่ถูกต้อง')));
              }else{
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => MainScreen()
                ));
              }
            }
          ),
          FlatButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              
              builder: (context) => MyRegisterPage()));
          }, child: Align(
                alignment: Alignment.bottomRight,
                child: Text("Register New Account"),
              ),)
        ],
      padding: EdgeInsets.all(50.0),) ,
      
      )
    );
    // return Form(
    //   key: _formKey,
    //   child: ListView(),
    // );
  }}