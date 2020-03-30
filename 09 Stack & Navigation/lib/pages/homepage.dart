import 'package:flutter/material.dart';
import 'package:ishandeveloper_app/drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var data;
  // var mytext="Title";
  var url="http://jsonplaceholder.typicode.com/photos";

  // TextEditingController _mytextcontroller=TextEditingController();

  @override

  void initState(){
    super.initState();

    fetchData();

  }


  fetchData()async{
    var res= await http.get(url);
    data=jsonDecode(res.body);
    setState(() {
      
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("API Reader"),
      ),
    body: data!=null?Padding(
      padding: const EdgeInsets.symmetric(vertical:16),
      child: ListView.builder(
        itemBuilder: (context,index){
          return ListTile(
            title: Text("ID : ${data[index]["id"]}"),
            subtitle: Text(data[index]["title"]),
            leading: Image.network(data[index]["url"]),
          );
        },
        itemCount: data.length,
        ),
    )
      :
      Center(
      child: CircularProgressIndicator(),
    ),
    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.save),
      onPressed: (){
        // mytext=_mytextcontroller.text;
        setState(() {
          
        });
      },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,

    drawer: MyDrawer(),

    );
  }
}

