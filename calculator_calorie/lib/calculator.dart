import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  State<StatefulWidget> createState() {
    return new CalculatorState();
  }
}

class CalculatorState extends State<Calculator> {
  int _radioValue = 0;
  int _BMR = 0;
  int _maintainenceCal = 0;
  int _output = 0;

  TextEditingController userWeight = new TextEditingController();
  TextEditingController userFeet = new TextEditingController();
  TextEditingController userInches = new TextEditingController();
  TextEditingController userAge = new TextEditingController();

  void calcBMR() {
    setState(() {
      double height =
          double.parse(userFeet.text) * 12 + double.parse(userInches.text);
      double weight = double.parse(userWeight.text);
      double age = double.parse(userAge.text);

      if (_radioValue == 1)
        _BMR = (655 + (4.35 * weight) + (4.7 * height) - (4.7 * age))
            .round(); //for women
      else
        _BMR = (66 + (6.23 * weight) + (12.7 * height) - (6.8 * age))
            .round(); //for men

      _output = _BMR;
    });
  }
  
  void calcMaintainence(){
    setState(() {
         _maintainenceCal = double.parse(userWeight.text).round()*12; 
         _output = _maintainenceCal;
        });
  }

  void reset() {
    setState(() {
      userAge.clear();
      userWeight.clear();
      userInches.clear();
      userFeet.clear();
       _output = 0;

    });
  }

  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Calorie Calculator"),
          centerTitle: true,
          backgroundColor: const Color(0xFF004d40),
          elevation: 10.0,
        ),
        body: new Container(
            color: const Color(0xFFe0f2f1),
            child: new ListView(
              children: <Widget>[
                new Padding(padding: const EdgeInsets.all(20.0)),
                //USER HEIGHT
                new Row(children: <Widget>[
                  new Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 8)),
                  new Text("Enter Your Height"),
                  new Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 20)),
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
                ]),
                new Padding(padding: const EdgeInsets.all(5.0)),
                // USER WEIGHT
                new Row(children: <Widget>[
                  new Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 8)),
                  new Text("Enter Your Weight"),
                  new Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 20)),
                  new Container(
                      width: 80.0,
                      child: new TextField(
                        controller: userWeight,
                        keyboardType: TextInputType.number,
                        decoration: new InputDecoration(
                          hintText: "lbs",
                        ),
                      ))
                ]),
                new Padding(padding: const EdgeInsets.all(5.0)),
                // USER AGE
                new Row(children: <Widget>[
                  new Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 8)),
                  new Text("Enter Your Age"),
                  new Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 11)),
                  new Container(
                      width: 80.0,
                      child: new TextField(
                          controller: userAge,
                          keyboardType: TextInputType.number,
                          decoration: new InputDecoration(
                            hintText: "years",
                          )))
                ]),
                new Padding(padding: const EdgeInsets.all(5.0)),
                // USER GENDER
                new Row(children: <Widget>[
                  new Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 8)),
                  new Text("Gender"),
                  new Container(
                      width: 125.0,
                      child: new RadioListTile(
                          title: new Text("Male"),
                          value: 0,
                          groupValue: _radioValue,
                          activeColor: const Color(0xFF004d40),
                          onChanged: (value) {
                            setState(() {
                              _radioValue = value;
                            });
                          })),
                  new Container(
                      width: 145.0,
                      child: new RadioListTile(
                          title: new Text("Female"),
                          value: 1,
                          groupValue: _radioValue,
                          activeColor: const Color(0xFF004d40),
                          onChanged: (value) {
                            setState(() {
                              _radioValue = value;
                            });
                          }))
                ]),
                // Calculate Button
                new Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 5,
                        right: MediaQuery.of(context).size.width / 5),
                    child: new RaisedButton(
                      child: new Text("Calculate BMR"),
                      //shape: RoundedRectangleBorder(),
                      color: Color(0xFF00695C),
                      textColor: Colors.white,
                      onPressed: calcBMR,
                    )),
                //maintainence button
                new Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 5,
                        right: MediaQuery.of(context).size.width / 5,
                        top: 10.0),
                    child: new RaisedButton(
                      child: new Text("Calculate Maintainence Cal"),
                      //shape: RoundedRectangleBorder(),
                      color: Color(0xFF00695C),
                      textColor: Colors.white,
                      onPressed: calcMaintainence,
                    )),
                // Reset Button
                new Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 5,
                        right: MediaQuery.of(context).size.width / 5,
                        top: 10.0),
                    child: new RaisedButton(
                      child: new Text("Reset"),
                      //shape: RoundedRectangleBorder(),
                      color: Color(0xFF00695C),
                      textColor: Colors.white,
                      onPressed: reset,
                    )),
                new Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 5),
                  child: new Text(
                    "$_output kcal/day",
                    style: TextStyle(
                      fontSize: 45.0,
                    ),
                  ),
                ),
              ],
            )));
  }
}
