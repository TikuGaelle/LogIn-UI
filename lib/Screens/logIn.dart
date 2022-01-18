import 'package:flutter/material.dart';
import 'package:login_ui/Screens/SignUp.dart';

import 'constants.dart';

class LogIn extends StatelessWidget {
   

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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Text(
                             'Welcome',
                             style: TextStyle(
                               fontWeight: FontWeight.bold,
                               fontSize: 40,
                               color: Color(0xFF008827),
                             ),
                              ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Row(
                            children: const [
                              Text(
                                'to',
                                style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF008827),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Creativity.',
                                style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF384529),
                                ),
                              ),
                            ],),
                          )  
                        ],
                      ), ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 180,
                          height: 180,
                          decoration: const BoxDecoration(
                            color: Color(0xFF008827),
                            borderRadius:
                                BorderRadius.only(bottomLeft: Radius.circular(200)),
                          ),
                          // child: Align(
                          //     alignment: Alignment.center, child: Text('asdasd'))
                        ),
                      ),
                    ],
                  ),
                 
                 Align(
                   alignment: const Alignment(0.4, -0.1),
                   child: Container(
                     height: 50,
                     width: 50,
                     decoration: const BoxDecoration(
                       shape: BoxShape.circle,
                       color: Color(0xFF384529),
                     ),
                     //padding: const EdgeInsets.all(40.0),
                   ),
                 ),
                  
                 Align(
                   alignment: const Alignment(-0.0, -0.1),
                   child: Container(
                     height: 50,
                     width: 50,
                     decoration: const BoxDecoration(
                       shape: BoxShape.circle,
                       color: Color(0xFF008827),
                     ),
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
                             'Log In',
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
                               onPressed: () {
                                Navigator.push( 
                                  context, 
                                   MaterialPageRoute(builder: (context) => SignUp()), );
                               },
                               child: Text(
                                 'Sign In',
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