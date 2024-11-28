import 'package:event_app/MVVM/utils/constant/colors.dart';
import 'package:event_app/MVVM/utils/widgets/customTextformfield.dart';
import 'package:event_app/MVVM/utils/widgets/custombutton.dart';
import 'package:event_app/MVVM/view/screen/Organizer/assign_2.dart';
import 'package:flutter/material.dart';

class registration_2 extends StatelessWidget {
   registration_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 50,),
              Image.asset("assets/image_1.png"),
              SizedBox(height: 30,),
              Text("Registration",style: TextStyle(fontSize: 40,color: primarycolor.c,
              fontWeight: FontWeight.bold),),
              Padding(
                padding: const EdgeInsets.only(top: 18,right: 310),
                child: Text("Name",style: TextStyle(fontSize: 16,),),
              ),
              CustomtexFormField(
                hintstyle: TextStyle(),
               onpress: (){}, 
               color: secondarycolor.c),
                Padding(
                  padding: const EdgeInsets.only(top: 18,right: 280),
                  child: Text("Phone No",style: TextStyle(fontSize: 16,),),
                ),
               CustomtexFormField(
                hintstyle: TextStyle(),
               onpress: (){}, 
               color: secondarycolor.c),
                Padding(
                  padding: const EdgeInsets.only(top: 18,right: 310),
                  child: Text("Email",style: TextStyle(fontSize: 16,),),
                ),
               CustomtexFormField(
                hintstyle: TextStyle(),
               onpress: (){}, 
               color: secondarycolor.c),
                Padding(
                  padding: const EdgeInsets.only(top: 18,right: 280),
                  child: Text("Id Number",style: TextStyle(fontSize: 16,),),
                ),
               CustomtexFormField(
                hintstyle: TextStyle(),
               onpress: (){}, 
               color: secondarycolor.c),
               SizedBox(height: 40,),
               SizedBox(width: 370,height: 50,
                 child: Custombutton(
                  color: primarycolor.c,
                  onpress: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>assign2()));
                  }, text: "Submit"),
               )
          
            ],),
        ),
      ),
    );
  }
}