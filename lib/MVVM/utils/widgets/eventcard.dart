import 'package:event_app/MVVM/utils/constant/colors.dart';
import 'package:flutter/material.dart';

class Eventcard extends StatelessWidget {
  final String Name;
  final String date;
  final String time;
  final String stage;
  final double ?width;
  final double ?hight;
  final VoidCallback ondelete;
  final VoidCallback? edit;
   bool? isAdmin;

   Eventcard({super.key,
  required this.Name,
  required this.date,
  required this.stage,
  required this.time,
  required this.ondelete,
  this.hight,
  this.width,
  this.isAdmin = false,
  this.edit,
  
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shadowColor: Colors.blue,
      color: primarycolor.c,
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15)),
      child: SizedBox(
        height: hight,
        width: width,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: Text(Name,style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),),
                  ),
                  GestureDetector(onTap: ondelete,
                  child: Icon(Icons.delete,size: 30,),),
                ],
              ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [ SizedBox(height: 10),
              Text("Date : $date",
              style: TextStyle(fontSize: 16,color: Colors.white),
              ),
              SizedBox(height: 5,),
              Text("Time : $time",
              style: TextStyle(fontSize: 16,color: Colors.white),
              ),
              SizedBox(height: 5,),
              Text("Stage : $stage",
              style: TextStyle(fontSize: 16,color: Colors.white),),],),
              isAdmin == true ?  
               GestureDetector(onTap: edit,
                  child: Icon(Icons.edit,size: 30,),): Container(),
              ],
             )
            ],
          ),),),
    );
  }
}