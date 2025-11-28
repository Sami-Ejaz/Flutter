import 'package:flutter/material.dart';
import 'package:routing/home_screen.dart';
import 'package:routing/last_page.dart';
import 'package:routing/screen_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: HomeScreen(),
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        ScreenTwo.id:(context)=>ScreenTwo(),
        LatPage.id:(context)=>LatPage()
      },
    );
  }
}

// We can shift from one screen two another through Navigator.push

//ROUTING :
// first  give unique Name to each file
// syntax for Name : static const String id='name';
// for Routing we cannot use Home instead we use Routes