import 'package:flutter/material.dart';

class GenderButtons extends StatefulWidget {
  @override
  GenderButtonsState createState() {
    return new GenderButtonsState();
  }
}

class GenderButtonsState extends State<GenderButtons> {
  int _radioValue = 0;
  Widget build(BuildContext context) {
    return new Row(
      children: <Widget>[
        new Padding(padding: const EdgeInsets.only(left: 61.0)),
        new Text("Gender"),
        //new Padding(padding: const EdgeInsets.only(left: 20.0)),
        new Radio(
          value: 0,
          groupValue: _radioValue,
          activeColor: const Color(0xFF004d40),
          onChanged: (value) {
            setState(() {
              _radioValue = value;
            });
          },
        ),
        //new Text("Male"),
        new Radio(
          value: 1,
          groupValue: _radioValue,
          activeColor: const Color(0xFF004d40),
          onChanged: (value) {
            setState(() {
              _radioValue = value;
            });
          },
        ),
        new Text("Female"),
      ],
    );
  }
}
