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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            // color:Colors.red,
            // padding: const EdgeInsets.symmetric(vertical: 40, horizontal:15),
            width:350,
            height: 100,
            alignment: Alignment.center,
            // color: Colors.red,
            decoration: BoxDecoration(
              color:Colors.red,
              borderRadius: BorderRadius.circular(50)
              ),
            ),
          Container(
            width: 350,
            height: 400,
            // color:Colors.blue,
            alignment: Alignment.center,   
            decoration: BoxDecoration(
              color:Colors.blue,
              borderRadius: BorderRadius.circular(50)
            ),         
            ),
            Container(
            width: 350,
            height: 100,
            // color:Colors.green,
            alignment: Alignment.center,  
            decoration: BoxDecoration(
              color:Colors.green,
              borderRadius: BorderRadius.circular(50)
            ),          
            )
        ],
      ),
    ),
    );
  }
}
