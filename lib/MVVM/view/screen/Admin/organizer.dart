import 'package:event_app/MVVM/utils/constant/colors.dart';
import 'package:event_app/MVVM/utils/widgets/custombutton.dart';
import 'package:event_app/MVVM/utils/widgets/customform_field.dart';
import 'package:flutter/material.dart';

class Organizer1 extends StatelessWidget {
  Organizer1({super.key});
  final TextEditingController _idnumbercontroller=TextEditingController();
  final TextEditingController _phonenumercontroller=TextEditingController();
 final formkey=GlobalKey<FormState>();
 String IdNumber="123456";
 String phone="1234567890";
  

  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar:  AppBar(
        title: const Center(child: Padding(
          padding: EdgeInsets.only(right: 40),
          child: Text("Organizer  "),
        )),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Form(key: formkey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: CircleAvatar(
                    radius: 50,
                    child: Image.asset("assets/user.png"), 
                  ),
                ),
                const SizedBox(height:20 ,),
                const Text("Name",style: TextStyle(fontSize:20),),
                SizedBox(height: 60,),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10), 
                  child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right:  300),
                        child: Text("ID Number"),
                      ),
                     SizedBox(width: 370,
                       child: CustomFormField(
                        hinttext: "0000", 
                       heplertext: "Enter your unique id",
                        hintstyle: TextStyle(color:grey.c), 
                        validator: (Value){
                           if (_idnumbercontroller.text.isEmpty){
                            return "Enter your Id Number";
                           }
                           else if(_idnumbercontroller.text!=IdNumber){
                            return "invalid id";
                           }
                       },
                        controller: _idnumbercontroller),
                     ),
                     SizedBox(height: 40,),
                     Padding(
                       padding: const EdgeInsets.only(right: 300),
                       child: Text("Phone No"),
                     ),
                     SizedBox(width: 370,
                       child: CustomFormField(
                        hinttext: "987654322",
                        heplertext: "Enter your phone number",
                         hintstyle: TextStyle(color: grey.c), 
                         validator: (Value){
                          if(_phonenumercontroller.text.isEmpty){
                            return "Enter your phone number";
                          }
                          else if (_phonenumercontroller.text!=phone){
                            return "invalid phone number";
                          }
                         }, 
                         controller: _phonenumercontroller),
                     ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 5),
                        child: SizedBox(height: 50,width: 170,
                          child: Custombutton(
                            color: Colors.green,
                            onpress: () {},
                            text: "Accept",
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 5,),
                        child: SizedBox(height: 50,width: 170,
                          child: Custombutton(
                            color: Colors.red,
                            onpress: () {},
                            text: "Reject",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),);
  }
}