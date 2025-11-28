import 'package:flutter/material.dart';

class PageThree extends StatefulWidget {
  static const String id='page_three';
  const PageThree({super.key});

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  static const String id='page_three';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        drawer
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text
                ('Page Three .. ',style:TextStyle(fontSize: 30,color: Colors.purpleAccent,),),

            ],

          ),
        ),
      ),
    );
  }
}
