import 'package:flutter/material.dart';

import 'constants.dart';

class SignUp extends StatelessWidget {
   

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
     TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

    return Scaffold(
          body: ListView(
            children: [
               Container(
            color: Colors.white,
            child: Column(
              children: [
                  Row(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Stack(
                          children: [
                             Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: 300,
                            height: 240,
                            decoration: const BoxDecoration(
                              color: Color(0xFF008827),
                              borderRadius:
                                  BorderRadius.only(bottomRight: Radius.circular(300),
                                 // bottomLeft: Radius.circular(300),
                                  )
                            ),
                            // child: Align(
                            //     alignment: Alignment.center, child: Text('asdasd'))
                          ),
                        ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0, top: 50.0),
                              child: Text(
                                'Welcome \nTo Creativity.',
                                style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ), 
                          ],
                        ), 
                    ],
                  ),
                  const SizedBox(
                   height: 20,
                 ),
                 
                 Align(
                   alignment: const Alignment(0.4, -0.1),
                   child: Container(
                     height: 50,
                     width: 50,
                     decoration: const BoxDecoration(
                       shape: BoxShape.circle,
                       //color: Color(0xFF384529),
                       gradient: LinearGradient(
                         colors: [Color(0xff384529), Color(0xff008827)],
                         begin: Alignment.bottomLeft,
               end: Alignment.topRight,
                         ),
                     ),
                     //padding: const EdgeInsets.all(40.0),
                   ),
                 ),
                 const SizedBox(
                   height: 20,
                 ),
                 Padding(
                   padding: const EdgeInsets.all(20.0),
                   child: Column(
                     children: [
                       TextField(
                           controller: password,
                           decoration: InputDecoration(
                             prefixIcon: Icon(Icons.email_outlined),
                             labelText: "Email",
                           )),
                       TextField(
                         
                           controller: username,
                           decoration: InputDecoration(
                             labelText: "Username",
                             prefixIcon: Icon(Icons.person_outline),
                           )),
                       //Container(height: 30),
                       TextField(
                           controller: password,
                           decoration: InputDecoration(
                             prefixIcon: Icon(Icons.lock_outline),
                             labelText: "Password",
                           )),
                            
                       Container(height: 50),
                       SizedBox(
                         height: 60,
                         width: 200,
                         child: ElevatedButton(
                           onPressed: () {},
                           child: Text(
                             'Sign In',
                             style: TextStyle(fontSize: 18),
                           ),
                           style: ElevatedButton.styleFrom(
                               primary: Color(0xFF008827),
                               elevation: 3,
                               shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(30)),
                               padding: EdgeInsets.all(20)),
                         ),
                       ),
                       Container(height: 15),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           const Text(
                             'Don’t have an account yet?',
                             style: TextStyle(
                               color: Color(0xFF787777),
                               fontSize: 13,
                             ),
                           ),
                           TextButton(
                               onPressed: () {},
                               child: Text(
                                 'Log In',
                                 style: TextStyle(
                                   color: Color(0xFF008827),
                                   fontSize: 13,
                                 ),
                               )),
                         ],
                       )
                     ],
                   ),
                 ),
              ],
            ),
            ),
            ]));
  }
}