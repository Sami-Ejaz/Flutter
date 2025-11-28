import 'package:flutter/material.dart';
import 'package:routing/last_page.dart';
import 'package:routing/screen_two.dart';
class HomeScreen extends StatelessWidget {
  static const String id='home_screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Center(child: Text('Navigation Drawer ')),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
           // DrawerHeader(child: Text('Sami Ejaz')),

            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.purpleAccent
              ),
                accountName: Text('Sami Ejaz',style: TextStyle(color: Colors.black)
                ), accountEmail: Text('samiijaz11@gmail.com',style: TextStyle(color: Colors.black),)),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Page 1'),
              onTap: (){
                Navigator.pushNamed(context, ScreenTwo.id);
              },
            ),
            ListTile(
              leading: Icon(Icons.calendar_month_outlined),
              title: Text('Page 2'),
              onTap: (){
                Navigator.pushNamed(context, LatPage.id);
              },
            ),
            ListTile(
              leading: Icon(Icons.call),
              title: Text('Page 3'),
              onTap: (){},
            ),






          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Center(
           child: TextButton(
               onPressed: (){
                 Navigator.pushNamed(context, ScreenTwo.id);

               //   Navigator.push(
               //       context, MaterialPageRoute(builder: (context)=>ScreenTwo()));
    },
               child: Text('Button 1',style: TextStyle(color: Colors.blue,fontSize: 25),)),
         )


        ],
      ),
    );
  }
}
