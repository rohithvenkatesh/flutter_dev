import 'package:flutter/material.dart';

class WeightField extends StatefulWidget {
  State<StatefulWidget> createState() {
    return new WeightFieldState();
  }
}

class WeightFieldState extends State<WeightField> {
  TextEditingController userWeight = new TextEditingController();
  Widget build(BuildContext context) {
    return new Row(
      children: <Widget>[
        new Padding(padding: const EdgeInsets.only(left: 60.0)),
        new Text("Enter Your Weight"),
        new Padding(padding: const EdgeInsets.only(right: 20.0)),
        new Container(
            width: 80.0,
            child: new TextField(
              controller: userWeight,
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                hintText: "lbs",
              ),
            )),
      ],
    );
  }
}
