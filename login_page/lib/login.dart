import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return new LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  final TextEditingController _userName = new TextEditingController();
  final TextEditingController _userPass = new TextEditingController();

  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.brown.shade100,
        appBar: new AppBar(
          title: new Text("Login"),
          centerTitle: true,
          backgroundColor: Colors.brown.shade300,
        ),
        body: new Container(
          alignment: Alignment.topCenter,
          child: new ListView(
            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.all(50.0),
                child: new Image.asset(
                  'images/login.png',
                  width: 150.0,
                  height: 150.0,
                  color: Colors.brown.shade300,
                ),
              ),
              new Container(
                width: MediaQuery.of(context).size.width - 50,
                height: 200.0,
                child: new Column(
                  children: <Widget>[
                    new TextField(
                      controller: _userName,
                      decoration: new InputDecoration(
                        hintText: "User Name",
                        icon: new Icon(Icons.person_outline),
                        border: new OutlineInputBorder(),
                      ),
                    ),

                    new TextField(
                      controller: _userPass,
                      decoration: new InputDecoration(
                        hintText: "Password",
                        icon: new Icon(Icons.lock_outline),
                        border: new OutlineInputBorder(),
                      ),
                    ),

                    new Padding(padding: const EdgeInsets.all(10.0)),

                    new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          new FlatButton(
                            child: new Text("Clear", style: new TextStyle(fontSize: 22.0),),
                            onPressed: (){_userName.clear(); _userPass.clear();},
                            highlightColor: Colors.brown.shade200,
                          ),
                          new FlatButton(
                            child: new Text("Login", style: new TextStyle(fontSize: 22.0),),
                            highlightColor: Colors.brown.shade200,
                          )
                        ],
                      ),
                  ],
                ),
              ),
              new Center(child: new Text(_userName.text.isEmpty? "Welcome!" : "Welcome, ${_userName.text}!", style: new TextStyle(fontSize: 20.0),)),
            ],
          ),
        ));
  }
}
