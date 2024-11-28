import 'package:event_app/MVVM/utils/constant/colors.dart';
import 'package:event_app/MVVM/utils/widgets/customTextformfield.dart';
import 'package:event_app/MVVM/utils/widgets/custombutton.dart';
import 'package:event_app/MVVM/view/screen/Organizer/assign_2.dart';
import 'package:flutter/material.dart';

class EditEvent extends StatelessWidget {
   EditEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Edit  Event"),
      centerTitle: true,),
     body: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40,right: 320),
            child: Text("Name",style: TextStyle(fontSize: 16),),
          ),
          CustomtexFormField(
            hinttext:  "000000",
            hintstyle: TextStyle(color: grey.c),
             onpress: (){},
              color: secondarycolor.c),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(right: 325),
            child: Text("Date",style: TextStyle(fontSize: 16),),
          ),
          CustomtexFormField(
            hintstyle: TextStyle(),
             onpress: (){},
              color: secondarycolor.c),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(right: 295),
                child: Text("Stage No",style: TextStyle(fontSize: 16),),
              ),
              CustomtexFormField(
            hintstyle: TextStyle(),
             onpress: (){},
              color: secondarycolor.c),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(right: 320),
                child: Text("Time",style: TextStyle(fontSize: 16),),
              ),
              CustomtexFormField(
            hintstyle: TextStyle(),
             onpress: (){},
              color: secondarycolor.c),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(right: 320),
                child: Text("Location",style: TextStyle(fontSize: 16),),
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
    );
  }
}