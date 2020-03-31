import 'package:flutter/material.dart';

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
                backgroundImage: NetworkImage("http://www.ishandeveloper.com/2020%20[old]/assets/img/profile.JPG"),
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