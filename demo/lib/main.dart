import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Image(
                  width: 100,
                  height: 120,
                  image: AssetImage('assets/logo.jpg'),
                )  ,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Maintenance',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w400,

                        ),
                      ),
                      Text(
                        'Box ',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 30,
                          fontWeight: FontWeight.w600,

                        ),
                      ),
                    ],
                  )

                ],
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Pacifico',
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  'Hello Welcome to our app.  ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,

                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    prefixIcon: Icon(Icons.email_outlined),
                    filled: true,
                    fillColor: Color(0xff22F48),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffE4E7EB))
                    )
                  ),
                ),
              ),
              SizedBox(
                height: 21,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Password',
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.visibility_off),
                      filled: true,
                      fillColor: Color(0xff22F48),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffE4E7EB))
                      )
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                height: 50,
                width: 300,

                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.w500,

                    ),
                  ),
                ) ,
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(child: Text('Dont Have an Account? ',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600
                  ),)),
                  SizedBox(
                    width: 4,
                  ),
                  Text('Sign-Up',style: TextStyle(
                    color: Colors.red,
                    fontSize: 24,
                    fontWeight: FontWeight.w500

                  ),)
                ],
              )

            ],

          ),
        ),
      ),
    );
  }
}
