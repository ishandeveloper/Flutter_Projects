import 'package:flutter/material.dart';
import 'package:ishandeveloper_app/pages/homepage.dart';
import 'package:ishandeveloper_app/pages/loginpage.dart';

void main(){
  runApp(MyApp());
  
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home:LoginPage(),
        theme: ThemeData(
          primarySwatch: Colors.purple
          ),
    );
  }
}