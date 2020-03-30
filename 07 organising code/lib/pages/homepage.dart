import 'package:flutter/material.dart';
import 'package:ishandeveloper_app/card.dart';
import 'package:ishandeveloper_app/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var mytext="Title";
  TextEditingController _mytextcontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Profile"),
      ),
    body: Center(
      child:Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
                  child: MyCard(mytext: mytext, mytextcontroller: _mytextcontroller),
        ),
      ),
    ),
    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.save),
      onPressed: (){
        mytext=_mytextcontroller.text;
        setState(() {
          
        });
      },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,

    drawer: MyDrawer(),

    );
  }
}

