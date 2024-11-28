import 'package:event_app/MVVM/utils/widgets/customfloatingbutton.dart';
import 'package:event_app/MVVM/utils/widgets/eventcard.dart';
import 'package:event_app/MVVM/view/screen/Admin/EventAdd.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Event1 extends StatelessWidget {
   Event1({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Event",style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      floatingActionButton:Padding(
        padding: const EdgeInsets.only(left: 100),
        child: CustomFloatingButton(
          onPress: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Eventadd1()));
          },
          icon: Icon(Icons.add,size: 45,),),
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 500),
        child: Center(child: Eventcard(
         
          Name:"Mohiniyattam" ,
         date: "Date : 7/12/2023", 
         stage: "Time :  3",
          time: "Stage : 10:00",
           ondelete: (){
            print("Deleted");
           },
            hight: 160,
             width: 370,
          ),),
      ),
  
      );
  }
}