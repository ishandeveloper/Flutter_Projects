import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
        home:HomePage(),
        theme: ThemeData(
          primarySwatch: Colors.purple
          ),
    ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ishandeveloper"),
      ),
    body: Center(
      child: Container(
        // color:Colors.red,
        // padding: const EdgeInsets.symmetric(vertical: 40, horizontal:15),
        width:100,
        height: 100,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(50),
          gradient: RadialGradient(colors: [
            Colors.red[200],
            Colors.red[300],
            
          ]),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10
            )
          ]
        ),
        child: Text("I am a box",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 15,
          color: Colors.white,
          fontWeight: FontWeight.bold
          ),        
        ),
        ),
    ),
    );
  }
}
