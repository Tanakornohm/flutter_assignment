import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home :DefaultTabController(
        length: 5,
        child: (Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('Home'),
            
          ),
          body: TabBarView(
            children: [
              Center(child: Text("Home"),),
              Center(child: Text("Notify"),),
              Center(child: Text("Map"),),
              Center(child: Text("Profile"),),
              Center(child: Text("Setup"),),
            ],
            
            ),
            bottomNavigationBar: new Column(
              mainAxisSize: MainAxisSize.min,
              children:[new Material(
              child: TabBar(
                tabs:[
                Tab(icon: Icon(Icons.dashboard)),
                Tab(icon: Icon(Icons.notifications)),
                Tab(icon: Icon(Icons.explore)),
                Tab(icon: Icon(Icons.person)),
                Tab(icon: Icon(Icons.settings)),],
              ),
              color: Colors.blue,
              )],
              
              )
                
              ,
            )
            
          
        )),
      );
    
  }
}