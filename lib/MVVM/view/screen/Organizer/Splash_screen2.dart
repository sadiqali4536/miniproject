import 'package:event_app/MVVM/utils/constant/colors.dart';
import 'package:event_app/MVVM/view/screen/Organizer/login2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({super.key});

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
    void initState(){

      initTo();
     super.initState();
    }
    void initTo()async{
       await Future.delayed(const Duration(seconds: 2),() {
  Get.off(const login2(),transition: Transition.zoom);

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