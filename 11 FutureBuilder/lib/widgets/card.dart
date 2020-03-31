import 'package:flutter/material.dart';


class MyCard extends StatelessWidget {
  const MyCard({
    Key key,
    @required this.mytext,
    @required TextEditingController mytextcontroller,
  }) : _mytextcontroller = mytextcontroller, super(key: key);

  final String mytext;
  final TextEditingController _mytextcontroller;

  @override
  Widget build(BuildContext context) {
    return Card(
            child:Column(children: <Widget>[
              Image.asset(
                "assets/profile.jfif",
                fit:BoxFit.cover
                ),
                SizedBox(
    height: 20,
                ),
                Text(
    mytext,
    style:TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold
      )
    ),
                Padding(
    padding: const EdgeInsets.symmetric(vertical:8, horizontal:24),
    child: TextField(
      controller: _mytextcontroller,
      
      decoration: InputDecoration(
        hintText: "Enter Here",
        labelText: "Change The Title",
        border: OutlineInputBorder()
        ),
    ),
                )

            ],)
          );
  }
}
