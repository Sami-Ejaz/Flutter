import 'package:flutter/material.dart';
import 'package:learningflutter/home_screen.dart';
import 'package:learningflutter/page_three.dart';
import 'package:learningflutter/screen_two.dart';
// Here we will learn about Navigator and Routing
// if we use Route or Route Name then we cannot use Navigator
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: homeScreen(),
      initialRoute: homeScreen.id,
      routes: {
        homeScreen.id:(context)=>homeScreen(),
        // ScreenTwo.id:(context)=>ScreenTwo(),
        // PageThree.id:(context)=>PageThree(),
      },
    );
  }
}

