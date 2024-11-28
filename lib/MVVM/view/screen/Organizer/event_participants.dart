import 'package:event_app/MVVM/utils/constant/colors.dart';
import 'package:flutter/material.dart';

class EventParticipants1 extends StatelessWidget {
  const EventParticipants1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 750),
                child: Container(
                  height: 50,
                  width: 370,
                  decoration: BoxDecoration(
                    color: primarycolor.c,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  alignment: Alignment.centerRight,
                  child: const Padding(
                    padding: EdgeInsets.only(right: 150.0), // Adjust spacing for text
                    child: Text(
                      "Kuchupudi",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
