import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  static const String id='home_screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController
      (length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: Text('WhatApp',style: TextStyle(color: Colors.white),),
            bottom: TabBar(
                tabs: [
                  Tab(child: Icon(Icons.camera_alt),),
                  Tab(child: Text('Chats')),
                  Tab(child: Text('Status')),
                  Tab(child: Text('Calls')),
                ]),
            actions: [
              Icon(Icons.saved_search),
              SizedBox(width: 10,),
              PopupMenuButton(
                 icon: Icon(Icons.more_horiz),
                  itemBuilder: (context)=>[
                    PopupMenuItem(
                        value: 1,
                        child: Text('New Group')),
                    PopupMenuItem(
                        value: 2,
                        child: Text('Settings')),
                    PopupMenuItem(
                        value: 3,
                        child: Text('Logout'))
                  ]),
              SizedBox(width: 10,),
            ],
          ),
          body: TabBarView(
              children: [
                Text('Camera'),
                ListView.builder(
                  itemCount: 12,
                    itemBuilder: (context,index){
                      return ListTile(
                        leading: ClipOval(
                         child: Image(image: AssetImage('assets/pfp.jpg')),

                        ),

                        title: Text('John Wick'),
                        subtitle: Text('Where is my Dog ?'),
                        trailing: Text('7:25 pm'),
                      );
                    }),
                ListView.builder(
                    itemCount: 12,
                    itemBuilder: (context,index){
                      return ListTile(
                        leading: ClipOval(
                          child: Image(image: AssetImage('assets/pfp.jpg')),

                        ),
                        title: Text('John Wick'),
                        subtitle: Text('5 minutes ago'),
                        // trailing: Text('7:25 pm'),
                      );
                    }),
                ListView.builder(
                    itemCount: 16,
                    itemBuilder: (context,index){
                      return ListTile(
                        leading: ClipOval(
                          child: Image(image: AssetImage('assets/profile.png')),

                        ),

                        title: Text('Sami Ejaz'),
                        subtitle: Text(index /2 ==0?'Audio call':'You Missed Vdeo Call'),
                        trailing: Icon(index /2 ==0? Icons.phone:Icons.video_call),
                      );
                    }),
              ]),
        ),
    );
  }
}
