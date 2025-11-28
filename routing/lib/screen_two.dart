import 'package:flutter/material.dart';
import 'package:routing/last_page.dart';
class ScreenTwo extends StatelessWidget {
  static const  String id='screen_two';
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text('Screen Two '),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Expanded(
           child: ListView.builder(
             itemCount: 100,
               itemBuilder:(context,index){
                 return ListTile(
                   leading: Icon(Icons.home),
                   title: Text('Page 1'),
                   onTap: (){
                     Navigator.pushNamed(context, ScreenTwo.id);
                   },
                 );
               }),
         )
        ],
      ),
    );
  }
}
