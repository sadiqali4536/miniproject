import 'package:flutter/material.dart';

class CustomtexFormField extends StatelessWidget {
  final String ?hinttext;
  final TextStyle hintstyle;
  final String ?heplertext;
  final Widget? prefixicon;
  final Widget? suffixicon;
  final Widget? icon;
  final Color color;
 Function ()onpress;

  CustomtexFormField(
   
   {super.key, 
    this.prefixicon, 
  this.suffixicon,
   this.hinttext,
  this.heplertext,
  required this.hintstyle,
  this.icon,
  required this.onpress,
  required this.color, 
  });

    
  @override
  Widget build(BuildContext context) {
    return(SizedBox(
      width: 370,
      child: TextFormField(
        decoration: InputDecoration(
          fillColor: color,
        filled: true,
        hintText: hinttext,
        hintStyle: hintstyle,
        prefixIcon: null,
        suffixIcon:null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        )
        ),
      ),
    ));
  }
}
