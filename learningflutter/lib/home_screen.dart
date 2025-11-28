import 'package:flutter/material.dart';
import 'package:learningflutter/screen_two.dart';
class homeScreen extends StatefulWidget {
  static const String id='home_screen';
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(
        backgroundColor: Colors.greenAccent,
        title: Center(child: Text('Navigation Drawer',style: TextStyle(color: Colors.white),)),),
      drawer: Drawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: [
          Center(
            child: TextButton(
                onPressed: (){
                  Navigator.pushNamed(context, ScreenTwo.id);
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenTwo()));
      },
                child: Text

                  ('Buton 1',style: TextStyle(color: Colors.purpleAccent),)),
          )
        ],
      ),

    );
  }
}
