import 'dart:async';

import 'package:flutter/material.dart';
import 'package:login_ui/Screens/constants.dart';

import 'Screens/logIn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Creativity',
      // theme: ThemeData(
         
      //   primarySwatch: Colors.blue,
      // ),
      home: const MyHomePage( ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
 
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
          ()=>Navigator.pushReplacement(context,   MaterialPageRoute(builder: 
                (context) =>   LogIn()  ) )
         );
  }
  @override
  Widget build(BuildContext context) {
     return Scaffold(
         body: SafeArea(
        child: Container(
        color: Colors.white,
        child: Column(
            children: [ 
              SizedBox( 
                height: 95,
              ),
              Align( 
                alignment: Alignment(0.6, 1),
                 child: Container( 
                 decoration: BoxDecoration(
                 color: BackGroundColor,
                 shape: BoxShape.circle,
                 ), 
                 height: 50,
                 width: 50,
                 ),
              ),
               SizedBox( 
                height: 15,
              ),
              Align(
              alignment: const Alignment(0.4, 1),
              child: Container(
                height: 80,
                width: 80,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: BackGroundColor,
                ),
                padding: const EdgeInsets.all(40.0),
              ),
            ),
            SizedBox( 
                height: 15,
              ),
              Center(
                child:  Container( 
               decoration: BoxDecoration(
               color: BackGroundColor,
               shape: BoxShape.circle,
               ), 
               height: 200,
               width: 200,
               child: Center(child: Text("Creativity",
               style: TextStyle(  
                 color: Colors.white,
                 fontSize: 30,
               ))),
               ),
              ),
              SizedBox( 
                height: 15,
              ),
               Align(
              alignment: const Alignment(- 0.6, 1),
              child: Container(
                height: 60,
                width: 60,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: BackGroundColor,
                ),
                padding: const EdgeInsets.all(40.0),
              ),
            ),
            ],
        ),     
    ),
         ),
     );
  }
}
