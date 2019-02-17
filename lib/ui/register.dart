import 'package:flutter/material.dart';

class MyRegisterPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyRegisterState();
  }

}

class MyRegisterState extends State<MyRegisterPage>{
  final alter = GlobalKey<ScaffoldState>();

  final TextEditingController email_tf = TextEditingController();
  final TextEditingController pass_tf = TextEditingController();
  final TextEditingController pass2_tf = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: alter,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Register"),
      ),
      body: Form(

      child: ListView(
        children: <Widget>[
          TextFormField(
            
            decoration: InputDecoration(
              
              hintText: 'johndoe@mail.com',
              icon: Icon(Icons.email),
            ),
            keyboardType: TextInputType.emailAddress,
            onSaved: (value) => print(value),
            controller: email_tf,
            
          ),TextFormField(
            decoration: InputDecoration(
              
              hintText: '*******',
              icon: Icon(Icons.lock),
            ),
            obscureText: true,
            keyboardType: TextInputType.text,
            onSaved: (value) => print(value),
            controller: pass_tf,
          ),
          TextFormField(
            decoration: InputDecoration(
              
              hintText: '*******',
              icon: Icon(Icons.lock),
            ),
            obscureText: true,
            keyboardType: TextInputType.text,
            onSaved: (value) => print(value),
            controller: pass2_tf,
          ),
          RaisedButton(
            child: Text("Continue"),
            onPressed: (){
              if (email_tf.text.isEmpty == true || pass_tf.text.isEmpty == true || pass2_tf.text.isEmpty ==true) {
                alter.currentState.showSnackBar(SnackBar(content: Text('กรุณากรอกข้อมูลให้ครบถ้วน')));
              }
              else if (email_tf.text == 'admin') {
                alter.currentState.showSnackBar(SnackBar(content: Text('user นี้มีอยู่ในระบบแล้ว')));
              }
              else if (pass_tf.text != pass2_tf.text) {
                alter.currentState.showSnackBar(SnackBar(content: Text('password ไม่เหมือนกัน')));
              }else{
                Navigator.pop(context);
              }
            },
          ),
        ],
      padding: EdgeInsets.all(50.0),) ,
      
      )
    );

    // return Form(
    //   key: _formKey,
    //   child: ListView(),
    // );
  }}