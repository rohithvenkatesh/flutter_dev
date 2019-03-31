import 'package:flutter/material.dart';

class HeightField extends StatefulWidget {
  State<StatefulWidget> createState() {
    return new HeightFieldState();
  }
}

class HeightFieldState extends State<HeightField> {
  TextEditingController userFeet = new TextEditingController();
  TextEditingController userInches = new TextEditingController();

  double getFeet()=> double.parse(this.userFeet.text);
  double getInches()=> double.parse(this.userInches.text);

  Widget build(BuildContext context) {
    return new Row(
      children: <Widget>[
        new Padding(padding: const EdgeInsets.only(left: 60.0)),
        new Text("Enter Your Height"),
        new Padding(padding: const EdgeInsets.only(right: 20.0)),
        new Container(
            width: 80.0,
            child: new TextField(
              controller: userFeet,
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                hintText: "feet",
              ),
            )),
        new Container(
            width: 80.0,
            child: new TextField(
              controller: userInches,
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                hintText: "inches",
              ),
            ))
      ],
    );
  }
}
