import 'package:flutter/material.dart';
import 'package:learningflutter/page_three.dart';
class ScreenTwo extends StatefulWidget {
  static const String id='Screen_Two';
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen Two'),
      ),
      body:
      Column(
        children: [

          TextButton(onPressed: (){
            Navigator.pushNamed(context, PageThree.id);
            // Navigator.push(context, MaterialPageRoute(builder: (context)=>PageThree()))
            // Navigator.pop(context);
          },
              child: Center(child: Text('Button 2',style: TextStyle(fontSize: 25,color: Colors.purpleAccent),))),
        ],
      ),
    );
  }
}
