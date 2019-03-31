import 'package:flutter/material.dart';

class AgeField extends StatefulWidget {
  State<StatefulWidget> createState() {
    return new AgeFieldState();
  }
}

class AgeFieldState extends State<AgeField> {
  TextEditingController userAge = new TextEditingController();

  Widget build(BuildContext context) {
    return new Row(
      children: <Widget>[
        new Padding(padding: const EdgeInsets.only(left: 60.0)),
        new Text("Enter Your Age"),
        new Padding(padding: const EdgeInsets.only(right: 36.0)),
        new Container(
            width: 80.0,
            child: new TextField(
              controller: userAge,
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                hintText: "years",
              ),
            ))
      ],
    );
  }
}
