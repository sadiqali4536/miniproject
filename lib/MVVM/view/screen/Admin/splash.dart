import 'package:event_app/MVVM/utils/constant/colors.dart';
import 'package:event_app/MVVM/view/screen/Admin/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splashscreen1 extends StatefulWidget {
  const Splashscreen1({super.key});

  @override
  State<Splashscreen1> createState() => _Splashscreen1State();
}

class _Splashscreen1State extends State<Splashscreen1> {
   @override
    void initState(){

      initTo();
     super.initState();
    }
    void initTo()async{
       await Future.delayed(const Duration(seconds: 2),() {
  Get.off(Login1(),transition: Transition.zoom);

        });

    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:primarycolor.c,
        body:Center(
          child:Image.asset("assets/image_1.png"),
          ) ,
    );
  }
}