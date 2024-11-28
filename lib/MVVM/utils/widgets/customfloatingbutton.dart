import 'package:event_app/MVVM/utils/constant/colors.dart';
import 'package:flutter/material.dart';

class CustomFloatingButton extends StatelessWidget {
  final VoidCallback onPress;
  final Color? color; 
  final Widget icon; 

  const CustomFloatingButton({
    super.key,
    required this.onPress,
     this.color,
    required this.icon, 
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: FloatingActionButton(
        onPressed: onPress,
        backgroundColor:amber.C,
        foregroundColor: secondarycolor.c,
        shape: RoundedRectangleBorder(
          borderRadius:BorderRadius.circular(30)), 
        child: icon,
         
      ),
    );
  }
}
