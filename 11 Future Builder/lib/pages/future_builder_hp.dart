import 'package:flutter/material.dart';
import 'package:ishandeveloper_app/widgets/drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:ishandeveloper_app/utils/constants.dart';

class HomePageFB extends StatefulWidget {
  @override
  _HomePageFBState createState() => _HomePageFBState();
}

class _HomePageFBState extends State<HomePageFB> {
  var data;
  // var mytext="Title";
  var url="http://jsonplaceholder.typicode.com/photos";

  // TextEditingController _mytextcontroller=TextEditingController();

  @override

  void initState(){
    super.initState();

    fetchData();

  }


  Future fetchData()async{
    var res= await http.get(url);
    data=jsonDecode(res.body);
    return data;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("API Reader"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.exit_to_app),onPressed: (){
            Constants.prefs.setBool("loggedIn", false);
            Navigator.pop(context);
          },)
        ],
      ),
    body: FutureBuilder(
        future:fetchData(),
        builder: (context,snapshot){
          switch(snapshot.connectionState){
            case ConnectionState.none:
              return Center(child: Text("Nothing is fetched"),
              );
            
            case ConnectionState.active:
            case ConnectionState.waiting:
              return Center(child: CircularProgressIndicator(),);
            case ConnectionState.done:
              if(snapshot.hasError){
                return Center(child: Text("An Error Occured"),);
              }
            return Padding(
      padding: const EdgeInsets.symmetric(vertical:16),
      child: ListView.builder(
        itemBuilder: (context,index){
          return ListTile(
            title: Text("ID : ${snapshot.data[index]["id"]}"),
            subtitle: Text(snapshot.data[index]["title"]),
            leading: Image.network(snapshot.data[index]["url"]),
          );
        },
        itemCount: snapshot.data.length,
        ),
    );

          }
        },
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

