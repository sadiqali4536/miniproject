import 'package:event_app/MVVM/utils/constant/colors.dart';
import 'package:event_app/MVVM/utils/widgets/customTextformfield.dart';
import 'package:event_app/MVVM/utils/widgets/custombutton.dart';
import 'package:event_app/MVVM/utils/widgets/textcard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ApplyAppeal3 extends StatelessWidget {
  ApplyAppeal3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Apply Appeal"),
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
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: const Text(
                "Name",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            CustomtexFormField(
              hintstyle: TextStyle(color: grey.c),
              onpress: () {},
              color: secondarycolor.c,
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 14),
              child: const Text(
                "Video Link",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            CustomtexFormField(
              hintstyle: TextStyle(color: grey.c),
              onpress: () {},
              color: secondarycolor.c,
            ),
             const SizedBox(height: 30),
            Padding(
              padding: const  EdgeInsets.only(left: 16),
              child: const Text(
                "Department",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            CustomtexFormField(
              hintstyle: TextStyle(color: grey.c),
              onpress: () {},
              color: secondarycolor.c,
            ),
             const SizedBox(height: 30),
            Padding(
              padding: const  EdgeInsets.only(left: 16),
              child: const Text(
                "Description",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              height: 130,
              width: 370,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
              border: Border.all(),
                color: secondarycolor.c
              ),

            ),
            
            SizedBox(height: 40,),
            SizedBox(width: 400,
            height: 50,
            child: Custombutton(
              color: primarycolor.c,
             onpress: (){},
              text: "Apply")),           
            
          ],
        ),
      ),
    );
  }
}
