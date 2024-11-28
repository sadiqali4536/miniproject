import 'package:event_app/MVVM/utils/constant/colors.dart';
import 'package:event_app/MVVM/view/screen/Admin/Student%20_Details.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class Home1 extends StatelessWidget {
  final List _names =[
  'Name',
  'Name',
  'Name',
  'Name',
  'Name',
  'Name',
  'Name',
  'Name',
  'Name',
  'Name', 
  ];

   Home1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
      title: const Text("Students List",style: TextStyle(
        fontWeight: FontWeight.bold),),),
      body: ListView.builder(
        itemCount:_names.length,
        itemBuilder: (context, index){
          return Card(elevation:4.0,
          margin:const EdgeInsets.symmetric(horizontal: 16,
          vertical: 4),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ListTile(
             contentPadding: const EdgeInsets.all(16.0),
             onTap: () => Get.to(const StudentDetails1()),
                    
            title: Text(_names[index],
            style: const TextStyle(fontSize:16,fontWeight: FontWeight.bold),
            ),
            subtitle: const Text('ID Number'),
            leading: Icon(Icons.person,color: blue.c),
            ),
            
          );
        }),
      );
  }
}