import 'package:event_app/MVVM/utils/widgets/customimagefield.dart';
import 'package:event_app/MVVM/utils/widgets/customtopbar.dart';
import 'package:flutter/material.dart';

class Home3 extends StatelessWidget {
  const Home3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Event"),
        centerTitle: true,
      ),
      body: const Center(
        child: Column(
          children: [
            SizedBox(height: 40,),
            SizedBox(width: 370,
              child: CustomImageField(text: "Mohiniyattam",
               imageUrl:"https://cdn-icons-png.flaticon.com/512/4904/4904233.png"),
            ),
             SizedBox(height: 10,),
              SizedBox(width: 370,
                child: CustomImageField(text: "Mohiniyattam",
                             imageUrl:"https://cdn-icons-png.flaticon.com/512/4904/4904233.png"),
              ),
          ],
        ),
      ),
    );
  }
}