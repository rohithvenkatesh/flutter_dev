import 'package:flutter/material.dart';

class Button extends StatelessWidget{
  String _name;
  VoidCallback _onTap;
  bool enabled = false;

  Button(this._name, this._onTap);

  Widget build(BuildContext context){
    return new Expanded(
      child: new FlatButton(
        color: Colors.pink.shade700, 
        shape: new StadiumBorder(), 
        highlightColor: Colors.pinkAccent.shade100, 
        child: new Text("$_name", 
        style: new TextStyle(fontSize: 40.0),), 
        padding: const EdgeInsets.all(60.0),
        onPressed:()=>  _onTap(),
      )
    );
  }
}