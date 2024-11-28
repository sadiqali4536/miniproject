import 'package:event_app/MVVM/utils/widgets/customimagefield.dart';
import 'package:flutter/material.dart';

class Appeal extends StatelessWidget {
  Appeal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Appeal",style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(width: 380,
                child: CustomImageField(
                  text: "Mohiniyattam", 
                  imageUrl: "https://cdn-icons-png.flaticon.com/512/4904/4904233.png"),
              ),
            ),
              SizedBox(height: 10,),
               SizedBox(width: 380,
                 child: CustomImageField(
                               text: "Mohiniyattam", 
                               imageUrl: "https://cdn-icons-png.flaticon.com/512/4904/4904233.png"),
               ),
          ],
        ),
      ),
    );
  }
}