import 'package:flutter/material.dart';
import 'package:ishandeveloper_app/pages/homepage.dart';
import 'package:ishandeveloper_app/pages/loginpage.dart';
import 'package:ishandeveloper_app/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async{

  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs= await SharedPreferences.getInstance();
  runApp(MyApp());
  
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home:Constants.prefs.getBool("loggedIn")==true?HomePage():LoginPage(),
        theme: ThemeData(
          primarySwatch: Colors.purple
          ),
      
    );
  }
}