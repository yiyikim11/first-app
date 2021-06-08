import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

//Main is the starting point when we open the app

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('I am a Weeb'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Image(image: AssetImage('image/pink-oreo.jpeg')),
      ),
    ),
  ));
}
