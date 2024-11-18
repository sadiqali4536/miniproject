import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {

  Function() onpress;
  final Color? color;
  final String text;


  Custombutton({super.key,
  required this.color,
   required this.onpress,
   required this.text});
   
     @override
     Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onpress,
    style: ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(color),
      foregroundColor: WidgetStatePropertyAll(Colors.white),
    ),
     child: Text(text.toString()));
     }
}
