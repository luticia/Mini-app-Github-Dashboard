import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/beer.dart';

class user {
  final int id;
  final String name;
  final String image_url;

  user.fromJSON(Map<String, dynamic> jsonMap) :
        id = jsonMap['id'],
        name = jsonMap['name'],
        image_url = jsonMap['image_url'];
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
          body:SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
            TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter a username',
                  hintStyle: TextStyle (fontWeight: FontWeight.w300, color: Colors.blue),
                  enabledBorder: new UnderlineInputBorder (
                  borderSide: new BorderSide (color: Colors.blue)),
              ),
            ),
            RaisedButton(
              color: Colors.pinkAccent,
              onPressed: () {
                //ajouter des conditions
                },
              child: Text('SEARCH',
                textAlign: TextAlign.center,

              ),
            ),
                ],

              )
          ),

        appBar: AppBar(
          title: Text('Github Dashboard Sample',
              textAlign: TextAlign.center,),
          backgroundColor: Colors.cyan,
        ),

      ),

    ),

  );

}