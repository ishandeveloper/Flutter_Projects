import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(

  home: Scaffold(
    appBar: AppBar(
      title:Text('My First App'),
      centerTitle: true,
    ),
    body: Center(
      child: Text('www.ishandeveloper.com'),
    ),
    floatingActionButton: FloatingActionButton(
      child: Text('Click'),
    ),
  )

));