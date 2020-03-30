import 'package:flutter/material.dart';

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
class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer( 
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: <Widget>[
            // DrawerHeader(child: Text(
            //   "Ishan Sharma",
            //     style: TextStyle(color: Colors.white,fontSize: 20),),
            // decoration: BoxDecoration(
            //   color:Colors.purple
            // ),
            // ),
            UserAccountsDrawerHeader(
              accountName: Text("Ishan"),
              accountEmail: Text("ishandeveloper@outlook.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("http://www.ishandeveloper.com/assets/img/profile.JPG"),
              ),
              onDetailsPressed: (){},
              ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Home"),
              subtitle: Text("Brief Introduction"),
              onTap: (){},
            ),
            
            
            ListTile(
              leading: Icon(Icons.work),
              title: Text("Experience"),
              subtitle: Text("I've gained"),
              onTap: (){},
            ),


            ListTile(
              leading: Icon(Icons.assignment),
              title: Text("Projects"),
              subtitle: Text("I've worked on"),
              onTap: (){},
            ),

            ListTile(
              leading: Icon(Icons.email),
              title: Text("Contact"),
              subtitle: Text("Social Links & Email"),
              onTap: (){},
            ),


            ListTile(
              leading: Icon(Icons.info),
              title: Text("About"),
              subtitle: Text("ishandeveloper"),
              onTap: (){},
            )


          ],
        ),
      );
  }
}