import 'package:flutter/material.dart';

class Textcard extends StatelessWidget {
  final String title1;
  final String title2;
  final Widget icon;
  final Color shadowcolor;
  final double elevation;
  final Color color;
  final double height;
  final double width;
  final Image ?image;

  const Textcard({
    super.key,
  
    required this.title1,
    required this.title2,
    required this.icon,
    required this.shadowcolor,
    required this.elevation, 
    required this.color, 
    required this.height,
    required this.width,
     this.image, 
  });

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      fontSize: 20,
      color: Colors.black,
    );

    return Card(
      elevation: elevation,
      shadowColor: shadowcolor,
      color: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: SizedBox(
        height: height,
        width: width,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      child: icon,
                    ),
                    Padding(
                      padding:  EdgeInsets.only(right: 240),
                        child: Text(
                          title1,
                          style: textStyle,
                        ),
                     ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      child: icon,
                    ),
                    Padding(
                      padding:  EdgeInsets.only(right: 260),
                        child: Text(
                          title2,
                          style: textStyle,
                        ),
                     ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
