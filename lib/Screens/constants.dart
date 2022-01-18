import 'package:flutter/material.dart';

const Color BackGroundColor = Color(0xff008827);
const Color BackGroundGrayColor = Color(0xff384529);

Widget  formWidget( String labelText) {
    return Stack(
      children: [ 
        TextFormField(
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            labelText: labelText,
            labelStyle: TextStyle(
                color: Color.fromRGBO(173, 183, 192, 1),
                fontWeight: FontWeight.bold),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(173, 183, 192, 1)),
            ),
          ),
        ),
      ],
    );
  }

  Widget iconWidget (IconData icon ) {
    return Container(
      padding: EdgeInsets.all(10),
      child: InkWell(
          onTap: (){
           // Navigator.pop(context);
          print('Back');
        },
            child: Icon(
              icon,
              color: Colors.black,

            ),),
    );
  }