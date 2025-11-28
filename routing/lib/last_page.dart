import 'package:flutter/material.dart';

class LatPage extends StatelessWidget {
  static const String id='last_page';
  const LatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Last Page '),
      ),
    body:Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Text('This is last page...'),
        ),
        Center(child: Text('Thank You ..',style: TextStyle(color: Colors.greenAccent,fontSize: 39),))
        
      ],
    ),
    );
  }
}
