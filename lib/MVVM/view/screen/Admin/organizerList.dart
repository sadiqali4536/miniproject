import 'package:event_app/MVVM/view/screen/Admin/organizer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Organizerlist1 extends StatelessWidget {
  final List _names=[
    "Name",
    "Name",
    "Name",
  ];
   Organizerlist1({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Organizer List",style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
    body: ListView.builder(
      itemCount:_names.length,
      itemBuilder: (context,index){
       return Card(elevation: 4.0,margin: EdgeInsets.symmetric(horizontal: 16,vertical: 4),
       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
       child: ListTile(contentPadding: EdgeInsets.all(16.0),
       onTap: () => Get.to(Organizer1()),
       title: Text(_names[index],style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
       subtitle: Text("ID Number",),
       leading: Icon(Icons.person,color: Colors.blue,),
       ),
       );
    }),
    
    );
  }
}