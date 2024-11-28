import 'package:event_app/MVVM/utils/widgets/custombottemnavigationbar.dart';
import 'package:event_app/MVVM/utils/widgets/eventcard.dart';
import 'package:event_app/MVVM/view/screen/Organizer/edit_event.dart';
import 'package:flutter/material.dart';

class assign2 extends StatelessWidget {
  assign2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Event",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Center(
              child: Eventcard(
                isAdmin: true,
                Name: "Mohiniyattam",
                date: "8/12/2023",
                stage: "5",
                time: "10:00",
                ondelete: () {
                  print("Deleted");
                },
                hight: 160,
                width: 370,
                edit: () { 
                Navigator.push(context, MaterialPageRoute(
                  builder: (context)=>(EditEvent())),);

                  print("Edit event");
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        name1: "Home",
        name2: "Events",
        name3: "Profile",
      ),
    );
  }
}
