import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/routes_name.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Login Page'),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent[200],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Name',
                hintStyle: TextStyle(color: Colors.blueGrey),
              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Name',
                hintStyle: TextStyle(color: Colors.blueGrey),
              ),
            ),
            SizedBox(height: 100,),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, RoutesName.homePage);
            }, child: Icon(CupertinoIcons.forward_fill))
          ],
        ),
      ),
    );
  }
}
