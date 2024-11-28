import 'package:event_app/MVVM/utils/constant/colors.dart';
import 'package:event_app/MVVM/utils/widgets/customTextformfield.dart';
import 'package:event_app/MVVM/utils/widgets/custombutton.dart';
import 'package:event_app/MVVM/utils/widgets/customform_field.dart';
import 'package:flutter/material.dart';

class EditEvent2 extends StatelessWidget {
  const EditEvent2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Edit  Event",style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Center(
        child: 
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 300),
              child: Text("Name"),
            ),
            CustomtexFormField(
              hinttext: "000000",
              hintstyle: TextStyle(),
               onpress: (){},
                color: secondarycolor.c,
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(right: 313),
                  child: Text("Date"),
                ),
                CustomtexFormField(
              hintstyle: TextStyle(),
               onpress: (){},
                color: secondarycolor.c,
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(right: 290),
                  child: Text("Stage No"),
                ),
                CustomtexFormField(
              hintstyle: TextStyle(),
               onpress: (){},
                color: secondarycolor.c,
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(right: 313),
                  child: Text("Time"),
                ),
                CustomtexFormField(
              hintstyle: TextStyle(),
               onpress: (){},
                color: secondarycolor.c,
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(right: 290),
                  child: Text("Location"),
                ),
                CustomtexFormField(
              hintstyle: TextStyle(),
               onpress: (){},
                color: secondarycolor.c,
                ),
                SizedBox(height: 230,),
                SizedBox(height: 50,width: 370,
                  child: Custombutton(
                    color: primarycolor.c,
                     onpress: (){},
                      text: "Submit"),
                )
          ],
        ),
      ),
    );
  }
}
