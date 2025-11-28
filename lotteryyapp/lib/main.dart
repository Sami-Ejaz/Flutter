import 'package:flutter/material.dart';
import 'dart:math';
void main(){
  runApp(Myapp());
}
class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  Random random=Random();
  int x=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title: Text('Lottery App'),
        ),
        body: Padding(
          padding: EdgeInsets.all(15),
          child: x==5?
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Text('Lottery Wining Number is 5',style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w600
              ),)),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 250,
                width: 270,
                decoration: BoxDecoration(
                    color: Colors.greenAccent.withOpacity(.7),
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.done_all,color: Colors.green,size:25,),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Congrats You Won ...',textAlign: TextAlign.center,)
                  ],
                ),
              )
            ],
          )
              :
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Text('Lottery Wining Number is 5',style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w600
              ),)),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 250,
                width: 270,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.7),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.error,color: Colors.red,size:25,),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Better Luck Nect Time your Number is $x \n  Try Again',textAlign: TextAlign.center,)
                  ],
                ),
              )
            ],
          ),
        ),
        floatingActionButton:FloatingActionButton(onPressed: (){
          x=random.nextInt(6);
          print(x);setState(() {

          });
          print(random.nextInt(6));
        },
        child: Icon(Icons.refresh),),
      ),
    );
  }
}
