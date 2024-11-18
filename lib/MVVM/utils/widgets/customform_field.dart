import 'package:event_app/MVVM/utils/constant/colors.dart';
import 'package:flutter/widgets.dart';


import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  final String hinttext;
  final TextStyle hintstyle;
  final String heplertext;
  final Widget? prefixicon;
  final Widget? suffixicon;
  final Widget? icon;
  TextEditingController? controller;
  final Function()? suffix;

  final String?Function(String?)validator;

  CustomFormField(
   
   {super.key, 
    this.prefixicon, 
  this.suffixicon,
  required this.hinttext,
  required this.heplertext,
  required this.hintstyle,
  this.icon,
  this.suffix,
  required this.validator,
  required this.controller,
  });

    
  @override
  Widget build(BuildContext context) {
    return(SizedBox(
      width: double.infinity,
      child: TextFormField(
        controller: controller,
        validator: validator,
        decoration: InputDecoration(
          fillColor: secondarycolor.c,
        filled: true,
        hintText: hinttext,
        hintStyle: hintstyle,
        prefixIcon: prefixicon,
        suffixIcon:null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        )
        ),
      ),
    ));
  }
}
