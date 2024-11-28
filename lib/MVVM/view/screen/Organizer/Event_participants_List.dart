import 'package:event_app/MVVM/utils/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EventParticipantsList extends StatelessWidget {
  final List<String> _names = [
    "Name",
    "Name",
    "Name",
  ];

  EventParticipantsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Participants List"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: _names.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 4,
            margin: const EdgeInsets.symmetric(horizontal: 17, vertical: 5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
             // onTap: () => Get.to(()),
              contentPadding: const EdgeInsets.all(16.0),
              title: Text(
                _names[index],
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text("ID Number",style: TextStyle(color: grey.c),),
              leading: const Icon(Icons.person,color: Colors.blue,),
            ),
          );
        },
      ),
    );
  }
}
