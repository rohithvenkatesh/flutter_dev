import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async{
  List data= await parseJson();

  

  runApp(new MaterialApp(
    title: "JSON Parser",
    home: new Scaffold(
      appBar: new AppBar(
        title: new Text("JSON Parser"),
        centerTitle: true,
        backgroundColor: new Color(0xFF651FFF),
      ),
      body: new Container(
        alignment: Alignment.center,
        child: new ListView.builder(
          
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index){
            return new Column(
              children: <Widget>[
               new ListTile(
                title: new Text(data[index]['title']),
                leading: new CircleAvatar(backgroundColor: Colors.black, child: new Text(index.toString()),),
                onTap: ()=>debugPrint("hello"),
               ) 
              ],
            );
          },
        )
      )
    ),
  ));
}

Future<List> parseJson() async{
  String sample_url = 'http://jsonplaceholder.typicode.com/todos';
  http.Response response = await http.get(sample_url);
  return json.decode(response.body);
}