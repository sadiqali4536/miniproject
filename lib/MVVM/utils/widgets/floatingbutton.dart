import 'package:event_app/MVVM/utils/constant/colors.dart';
import 'package:flutter/material.dart';

class CustomFloatingbutton extends StatelessWidget {
  final Color color;
  final Widget icon;
  final VoidCallback onpress;

  const CustomFloatingbutton({
    super.key,
  required this.color,
  required this.icon,
  required this.onpress});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed:onpress,
      backgroundColor: amber.C,
    elevation: 10,
    child: Icon(Icons.add_outlined));
  }
}