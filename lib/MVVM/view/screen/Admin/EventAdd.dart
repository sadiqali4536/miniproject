import 'package:event_app/MVVM/utils/constant/colors.dart';
import 'package:event_app/MVVM/utils/widgets/customTextformfield.dart';
import 'package:event_app/MVVM/utils/widgets/custombutton.dart';
import 'package:event_app/MVVM/view/screen/Admin/event.dart';
import 'package:flutter/material.dart';

class Eventadd1 extends StatelessWidget {
  const Eventadd1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("Add  Event"),
      centerTitle: true,
    ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40,right: 320),
                child: Text("Name",style: TextStyle(fontSize: 16),),
              ),
              CustomtexFormField(hinttext: "000000",
               heplertext: "Enter your name",
                hintstyle: TextStyle(),
                 onpress: (){},
                  color: secondarycolor.c),
                  SizedBox(height:20 ,),
                  Padding(
                    padding: const EdgeInsets.only(right: 330),
                    child: Text("Date",style: TextStyle(fontSize: 16),),
                  ),
                  CustomtexFormField(hinttext: null,
                   heplertext: null,
                    hintstyle: TextStyle(),
                     onpress: (){},
                      color: secondarycolor.c),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(right: 300),
                        child: Text("Stage No",style: TextStyle(fontSize: 16)),
                      ),
                      CustomtexFormField(
                        hinttext: null,
                       hintstyle: TextStyle(),
                        onpress: (){},
                         color: secondarycolor.c),
                         SizedBox(height: 20,),
                         Padding(
                           padding: const EdgeInsets.only(right: 330),
                           child: Text("Time",style: TextStyle(fontSize: 16)),
                         ),
                         CustomtexFormField(
                          hintstyle: TextStyle(),
                          onpress: (){},
                           color: secondarycolor.c),
                           SizedBox(height: 260,),
                           SizedBox(
                            height: 60,
                            width: 375,
                             child: Custombutton(
                              color: primarycolor.c,
                              onpress: (){},
                               text: "Submit"),
                           )
            ],
            ),
        ),
      ),

    );
  }
}