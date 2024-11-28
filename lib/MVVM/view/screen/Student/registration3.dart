import 'package:event_app/MVVM/utils/constant/colors.dart';
import 'package:event_app/MVVM/utils/widgets/customTextformfield.dart';
import 'package:event_app/MVVM/utils/widgets/custombutton.dart';
import 'package:event_app/MVVM/view/screen/Organizer/assign_2.dart';
import 'package:flutter/material.dart';

class Registration3 extends StatelessWidget {
   Registration3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Registration"),
      centerTitle: true,),
     body: Center(
      child: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 310),
              child: Text("Name",style: TextStyle(fontSize: 16),),
            ),
            CustomtexFormField(
              hintstyle: TextStyle(color: grey.c),
               onpress: (){},
                color: secondarycolor.c),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(right: 275),
              child: Text("Phone No",style: TextStyle(fontSize: 16),),
            ),
            CustomtexFormField(
              hintstyle: TextStyle(),
               onpress: (){},
                color: secondarycolor.c),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(right: 305),
                  child: Text("Email",style: TextStyle(fontSize: 16),),
                ),
                CustomtexFormField(
              hintstyle: TextStyle(),
               onpress: (){},
                color: secondarycolor.c),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(right: 270),
                  child: Text("ID Number",style: TextStyle(fontSize: 16),),
                ),
                CustomtexFormField(
              hintstyle: TextStyle(),
               onpress: (){},
                color: secondarycolor.c),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(right: 260),
                  child: Text("Department",style: TextStyle(fontSize: 16),),
                ),
                CustomtexFormField(
              hintstyle: TextStyle(),
               onpress: (){},
                color: secondarycolor.c),
                SizedBox(height: 130,),
                SizedBox(width: 360,height: 50,
                  child: Custombutton(
                    color: primarycolor.c,
                     onpress: (){
                           Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>assign2()),);
                     },
                      text: "Submit"),
                )
          ],
        ),
      ),
     ),
    );
  }
}