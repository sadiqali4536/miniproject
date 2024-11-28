import 'package:flutter/material.dart';

class Customlistvew extends StatelessWidget {
  final String child;

 const Customlistvew({super.key,
required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Container(
      child: Text(child),
    ),);
  }
}
