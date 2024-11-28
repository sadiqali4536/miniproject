import 'package:event_app/MVVM/utils/constant/colors.dart';
import 'package:event_app/MVVM/utils/widgets/customTextformfield.dart';
import 'package:event_app/MVVM/utils/widgets/custombutton.dart';
import 'package:event_app/MVVM/utils/widgets/textcard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrganizerAssign extends StatelessWidget {
  OrganizerAssign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Organizer"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                child: Image.asset("assets/user.png"),
              ),
            ),
            const SizedBox(height: 20),
            const Center(
              child: Text(
                "Name",
                style: TextStyle(fontSize: 20,),
              ),
            ),
            const SizedBox(height: 50),
            const Text(
              "ID Number",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 10),
            CustomtexFormField(
              hinttext: "000000",
              heplertext: "Enter your unique ID",
              hintstyle: TextStyle(color: grey.c),
              onpress: () {},
              color: secondarycolor.c,
            ),
            const SizedBox(height: 30),
            const Text(
              "Phone No",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 10),
            CustomtexFormField(
              hinttext: "987654322",
              heplertext: "Enter your phone number",
              hintstyle: TextStyle(color: grey.c),
              onpress: () {},
              color: secondarycolor.c,
            ),
            SizedBox(height: 20,),
            Text("Assign",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
            Textcard(
              title1: "Kathakali",
              title2: "Kolkali",
              shadowcolor: const Color.fromARGB(255, 17, 11, 11),
              elevation: 10,
              color: secondarycolor.c,
              height: 200,
              width: 400, icon: const Icon(Icons.circle,size: 12,), 
            ),
            SizedBox(height: 30,),
            SizedBox(width: 400,
            height: 50,
            child: Custombutton(
              color: primarycolor.c,
             onpress: (){},
              text: "Assign")),           
            
          ],
        ),
      ),
    );
  }
}
