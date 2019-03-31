import 'package:flutter/material.dart';
import './UI/button.dart';

class CounterHome extends StatefulWidget{
  State<StatefulWidget> createState(){ return new CounterHomeState(); }
}
class CounterHomeState extends State<CounterHome>{
  int _counter = 0;
  void _inc1(){
    setState(() {
      _counter++;
        });
  }
  void _reset(){
    setState(() {
      _counter = 0;
        });
  }
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("a simple counter"),
        backgroundColor: Colors.pinkAccent.shade700,
      ),

      body: new Container(
        color: Colors.grey.shade300,
        child: new Column(
          children: <Widget>[
            new Center(
              child: new Padding(
                padding: const EdgeInsets.only(top: 150.0, bottom: 250.0),
                child: new Text("$_counter", style: new TextStyle(fontSize: 250.0),))),
            new Row(
              children: <Widget>[
                new Button("reset", _reset),
                new Button("+1", _inc1),
              ],
            )
          ],
        )
      )
    );
  }
}