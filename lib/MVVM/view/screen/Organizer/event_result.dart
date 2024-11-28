import 'package:event_app/MVVM/utils/widgets/customfloatingbutton.dart';
import 'package:event_app/MVVM/utils/widgets/customimagefield.dart';
import 'package:flutter/material.dart';

class EventResult extends StatelessWidget {
  const EventResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 700,
              child: CustomImageField(
                text: 'Kuchupudi',
                imageUrl: 'https://cdn-icons-png.flaticon.com/512/4904/4904233.png',
              ),
            ),
          Padding(
            padding: const EdgeInsets.only(top: 550,left: 290),
            child: CustomFloatingButton(onPress: (){}, icon: Icon(Icons.add,size: 50,)),
          )
          ],
        ),
      ),
    );
  }
}
