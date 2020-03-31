import 'package:flutter/material.dart';
import 'package:ishandeveloper_app/pages/homepage.dart';
import 'package:ishandeveloper_app/utils/constants.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey=GlobalKey<FormState>();

  final _passwordController=TextEditingController();
  final _usernameController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Login Page"),
        ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
        Image.asset("assets/profile.jfif",
        fit: BoxFit.cover,
        color: Colors.black.withOpacity(0.7),
        colorBlendMode: BlendMode.darken,
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
            child: Center(
              child: Card(
                
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Form(
                      key: formKey,
                      child: Column(
                      children: <Widget>[
                        TextFormField(
                          controller: _usernameController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: "Username",
                            hintText: "Enter your email",
                            icon: Icon(Icons.email),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: _passwordController,
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: "Password",
                            hintText: "Enter your password",
                            icon: Icon(Icons.lock),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                    RaisedButton(
                      onPressed: (){
                        
                        formKey.currentState.validate();
                        Constants.prefs.setBool("loggedIn", true);
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>HomePage()));
                      },
                      child: Text("Sign In"),
                      color:Colors.black,
                      textColor:Colors.white,
                      )
                    ],),
                  ),
                ),
              ),
            ),
      ),
          ),
        )
      ],),
    );
  }
}