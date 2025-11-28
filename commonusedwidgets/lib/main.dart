// NOTES




// 1) Column
//Container ->
// has height and width properties.and container has child.
//container also has decoration property.where we can modify container.
// it also have alignment property.
// transform property
// transform:matrix4.rotation2(3)


// borderRadius: BorderRadius.circular(10)
// one property is BORDER-RADIUS(in which we can .circular apply on all sides)
//.only(top-right,top-left,bottom right,botton left)
// topRight: Radius.circular((10))

//Color on border:
// border: Border.all(
// color: Colors.red,
// width: 15,
// ),

// 2) Padding
// inside box
// EdgeInsets.all(value)
//EdgeInsets.symmetric(vertical/Horizontal:value)

// 3) margin:
//outside box
// edge insets only , edge insest all


// Shadow
//this is also box-decoration property
// boxShadow: [
// BoxShadow(
// color:Colors.pinkAccent,
// blurRadius: 100
// )
// ],

// 4) Box-Decoration - Image
// image: DecotationImage(
// image:NetworkImage(url),
// fit:boxfit.fit
// )


// 5) EXPANDED WIDGET:
//it occupy full screen
// if there is only one expanded widget ,it will occupy the whole screen ,if there are
// two expanded widgets then these two will occupy the whole screen .(2 expanded=2 parts)
//it has property flex from that we can adjust height.
// we use this for responsiveness

// 6)  STACK:
// Stack(
// children: [
// Container(
// height: 200,
// width: 200,
// alignment: Alignment.bottomLeft,
// color: Colors.pinkAccent,
// child: Text('One'),
// ),

// Container(
// height: 150,
// width: 150,
// alignment: Alignment.bottomLeft,
// color: Colors.amberAccent,
// child: Text('Two'),
// ),

// Container(
// height: 100,
// width: 100,
// color: Colors.greenAccent,
// child: Text('Three'),
// ),
// ],
// )
// usually we use stack wrap inside a container or a sizedbox

// we  can also positioned this way we want (top = value + bottom = value +right or left
// SizedBox(
// child: Stack(
// children: [
// Container(
// height: 200,
// width: 200,
// color: Colors.greenAccent,
// ),
// Positioned(
// top: 10,
// child: Text('First'))
// ],
// ),
// SizedBox(
//   child: Stack(
//     children: [
//       Container(
//         height: 420,
//         width: 420,
//         color: Colors.greenAccent,
//       ),
//       Positioned(
//           top: 20,
//           left: 30,
//           child:Container(
//         height: 210,
//         width: 210,
//         color: Colors.pinkAccent,
//       ))
//       ,Positioned(
//           top: 10,
//           child: Center(child: Text('First')))
//     ],
//   ),
// ),

// 6) CircularAvatar
// it work as a circle
// we can also pass min and max height
// Circle Avatar(
//   child: Text('Inside Circle',style: TextStyle(color: Colors.white,fontSize: 25),),
//   radius: 100,
//   backgroundColor: Colors.pinkAccent,
// )

// 7) DIVIDER;
//draw a line ( we can also pass color and thicnkness)
// by default divider is Horizontal,
//we can also pass vertical divider
// SizedBox(
//   height: 100,
//   child: VerticalDivider(
//     color: Colors.black,
//     thickness: 2,
//
//   ),
// ),

// 8)  RICH TEXT WIDGET:
// it allow us to display differnt style text in a single line
// RichText(
//     text: TextSpan(
//       text: 'Hello ',
//       style: Theme.of(context).textTheme.bodyLarge,
//       children: [
//         TextSpan(
//           text: 'World',
//         style: TextStyle(fontWeight: FontWeight.w700,fontSize: 25))
//       ]
//     )),

// 9) TEXT FORM FIELD
// Padding(
//   padding: EdgeInsets.all(1.5),
//   child: TextFormField(
//     keyboardType: TextInputType.phone,
//     cursorColor: Colors.red,
//     // enabled: false,
//     // if enabled is false then user cannot write anything in label
//     style: TextStyle(color: Colors.grey),
//     decoration: InputDecoration(
//       prefixIcon:
//       Icon(Icons.email),
//
//
//       fillColor: Colors.grey.withOpacity(0.3),
//       filled: true,
//
//       hintText: 'Enter Email',
//       // labelText: 'Email',
//       hintStyle: TextStyle(color: Colors.purple,),
//       labelStyle: TextStyle(color: Colors.blue),
//       enabledBorder: OutlineInputBorder(
//         borderSide: BorderSide(color: Colors.red),
//       ),
//       focusedBorder: OutlineInputBorder(
//         borderSide: BorderSide(color: Colors.yellow),
//       ),
//
//     ),
//     // Onchange Method allow us to keep track of the text that user will input in form-field
//     onChanged: (value){
//       print(value);
//     },
//   ),
// ),

// 10) lIST STYLE :
// ListTile(
// title:
// Text('Sami Ejaz'),
// subtitle: Text('Hey . Whats up .. ? '),
// trailing: Text('11:33 am'),
// leading:ClipOval(
//
// child: Image(
// image: AssetImage('assets/profile.png'),
// ),
// ),
// ),
// LISTVIEW- AND LIST BUILEDR
// Expanded(child:ListView.builder(
//     itemCount: 10,
//     itemBuilder:(context,index){
//
//       return ListTile(
//         title:
//         Text('Sami Ejaz'),
//         subtitle: Text('Typing..... ',style: TextStyle(color: Colors.green),),
//         trailing: Text('11:33 am'),
//         leading:ClipOval(
//
//           child: Image(
//             image: AssetImage('assets/pfp.jpg'),
//           ),
//         ),
//       );
//     }
// ) )



import 'package:flutter/material.dart';

void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purpleAccent,
          title: Text('top 10 Widgets'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // Center(
            //   child: CircleAvatar(
            //     radius: 50,
            //     // minRadius: 5,
            //     // maxRadius: 10,
            //     backgroundColor: Colors.greenAccent,
            //     child: Icon(Icons.person,color: Colors.white,),
            //   ),
            // ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title:
              Text('Sami Ejaz'),
              subtitle: Text('Hey . Whats up .. ? '),
              trailing: Text('11:33 am'),
              leading:ClipOval(

                child: Image(
                  image: AssetImage('assets/pfp.jpg'),
                ),
              ),
            ),
            ListTile(
              title:
              Text('Sami Ejaz'),
              subtitle: Text('Wait.I`am on my way'),
              trailing: Text('11:33 am'),
              leading:ClipOval(

                child: Image(
                  image: AssetImage('assets/profile.png'),
                ),
              ),
            ),
            // ListTile(
            //   title:
            //   Text('Sami Ejaz'),
            //   subtitle: Text('Typing..... ',style: TextStyle(color: Colors.green),),
            //   trailing: Text('11:33 am'),
            //   leading:ClipOval(
            //
            //     child: Image(
            //       image: AssetImage('assets/pfp.jpg'),
            //     ),
            //   ),
            // ),
            // ListTile(
            //   title:
            //   Text('Sami Ejaz'),
            //   subtitle: Text('Okay '),
            //   trailing: Text('11:33 am'),
            //   leading:ClipOval(
            //
            //     child: Image(
            //       image: AssetImage('assets/profile.png'),
            //     ),
            //   ),
            // ),
            // ListTile(
            //   title:
            //   Text('Sami Ejaz'),
            //   subtitle: Text('Hey . Whats up .. ? '),
            //   trailing: Text('11:33 am'),
            //   leading:ClipOval(
            //
            //     child: Image(
            //       image: AssetImage('assets/pfp.jpg'),
            //     ),
            //   ),
            // ),
            // ListTile(
            //   title:
            //   Text('Sami Ejaz'),
            //   subtitle: Text('Good'),
            //   trailing: Text('11:33 am'),
            //   leading:ClipOval(
            //
            //     child: Image(
            //       image: AssetImage('assets/pfp.jpg'),
            //     ),
            //   ),
            // ),
            // Expanded(child:ListView.builder(
            //     itemCount: 10,
            //     itemBuilder:(context,index){
            //       // return Text('Item'+index.toString());
            //       return ListTile(
            //         title:
            //         Text('Sami Ejaz'),
            //         subtitle: Text('Typing..... ',style: TextStyle(color: Colors.green),),
            //         trailing: Text('11:33 am'),
            //         leading:ClipOval(
            //
            //           child: Image(
            //             image: AssetImage('assets/pfp.jpg'),
            //           ),
            //         ),
            //       );
            //     }
            // ) )








            // Padding(
            //   padding: EdgeInsets.all(1.5),
            //   child: TextFormField(
            //     keyboardType: TextInputType.phone,
            //     cursorColor: Colors.red,
            //     // enabled: false,
            //     // if enabled is false then user cannot write anything in label
            //     style: TextStyle(color: Colors.grey),
            //     decoration: InputDecoration(
            //       prefixIcon:
            //       Icon(Icons.email),
            //
            //
            //       fillColor: Colors.grey.withOpacity(0.3),
            //       filled: true,
            //
            //       hintText: 'Enter Email',
            //       // labelText: 'Email',
            //       hintStyle: TextStyle(color: Colors.purple,),
            //       labelStyle: TextStyle(color: Colors.blue),
            //       enabledBorder: OutlineInputBorder(
            //         borderSide: BorderSide(color: Colors.red),
            //       ),
            //       focusedBorder: OutlineInputBorder(
            //         borderSide: BorderSide(color: Colors.yellow),
            //       ),
            //
            //     ),
            //     // Onchange Method allow us to keep track of the text that user will input in form-field
            //     onChanged: (value){
            //       print(value);
            //     },
            //   ),
            // ),
            // SizedBox(
            //   height: 100,
            //   child: VerticalDivider(
            //     color: Colors.black,
            //     thickness: 2,
            //
            //   ),
            // ),


            // RICH-TEXT
            // RichText(
            //     text: TextSpan(
            //       text: 'Hello ',
            //       style: Theme.of(context).textTheme.bodyLarge,
            //       children: [
            //         TextSpan(
            //           text: 'World',
            //         style: TextStyle(fontWeight: FontWeight.w700,fontSize: 25))
            //       ]
            //     )),


            // DIVIDER
            // Divider(
            //
            //   color: Colors.red,
            // thickness: 1,
            // )
            // Row(
            //   children: [
            //     Expanded(
            //       flex: 2,
            //       child: Container(
            //       height: 250,
            //       color: Colors.red,
            //       child: Center(child: Text('Container 1')),
            //     ),),


            // EXPANDED:
            //     Expanded(
            //       child: Container(
            //         height: 250,
            //         color: Colors.greenAccent,
            //         child: Center(child: Text('Container 1')),
            //       ),
            //     ),
            //   ],
            // ),
            // Center(
            //   child: Container(
            //     height: 150,
            //     width: 150,
            //     // transform: Matrix4.rotationX(1),
            //     // padding: EdgeInsets.all(1),
            //     margin: EdgeInsets.only(top: 10),
            //     decoration: BoxDecoration(
            //       color: Colors.amberAccent,
            //       borderRadius: BorderRadius.circular(10),
            //       // borderRadius: BorderRadius.only(
            //         // topRight: Radius.circular((10))
            //       // ),
            //       border: Border.all(
            //         color: Colors.red,
            //         width: 5,
            //       ),
            //       // image: DecorationImage(image: NetworkImage(url)),
            //       boxShadow: [
            //         BoxShadow(
            //           color:Colors.pinkAccent,
            //           blurRadius: 10
            //         )
            //       ],
            //     ),
            //
            //     child: Center(child: Text('Log-in')),
            //   ),
            // )
            //
          ],
        ),
      ),
    );
  }
}

