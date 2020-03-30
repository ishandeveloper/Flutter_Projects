import 'package:flutter/material.dart';
import 'package:ishandeveloper_app/pages/homepage.dart';

void main(){
  runApp(MyApp());
  
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:HomePage(),
        theme: ThemeData(
          primarySwatch: Colors.purple
          ),
    );
  }
}