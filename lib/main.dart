import 'package:event_app/MVVM/utils/widgets/custombottemnavigationbar.dart';
import 'package:event_app/MVVM/utils/widgets/customimagefield.dart';
import 'package:event_app/MVVM/utils/widgets/customtopbar.dart';
import 'package:event_app/MVVM/view/screen/Admin/Assign.dart';
import 'package:event_app/MVVM/view/screen/Admin/EventAdd.dart';
import 'package:event_app/MVVM/view/screen/Admin/organizerList.dart';
import 'package:event_app/MVVM/view/screen/Admin/organizer_assing.dart';
import 'package:event_app/MVVM/view/screen/Admin/splash.dart';
import 'package:event_app/MVVM/view/screen/Organizer/Appeal_Detail.dart';
import 'package:event_app/MVVM/view/screen/Organizer/Appeal_List.dart';
import 'package:event_app/MVVM/view/screen/Organizer/Appeal.dart';
import 'package:event_app/MVVM/view/screen/Organizer/Edit_Event.dart';
import 'package:event_app/MVVM/view/screen/Organizer/Event_participants_List.dart';
import 'package:event_app/MVVM/view/screen/Organizer/Splash_screen2.dart';
import 'package:event_app/MVVM/view/screen/Organizer/Update_Result.dart';
import 'package:event_app/MVVM/view/screen/Organizer/add_result.dart';
import 'package:event_app/MVVM/view/screen/Organizer/assign_2.dart';
import 'package:event_app/MVVM/view/screen/Organizer/edit_event2.dart';
import 'package:event_app/MVVM/view/screen/Organizer/event_details.dart';
import 'package:event_app/MVVM/view/screen/Organizer/event_participants.dart';
import 'package:event_app/MVVM/view/screen/Organizer/event_result.dart';
import 'package:event_app/MVVM/view/screen/Organizer/login2.dart';
import 'package:event_app/MVVM/view/screen/Organizer/registration_2.dart';
import 'package:event_app/MVVM/view/screen/Student/apply_appeal3.dart';
import 'package:event_app/MVVM/view/screen/Student/event_apply.dart';
import 'package:event_app/MVVM/view/screen/Student/event_details3.dart';
import 'package:event_app/MVVM/view/screen/Student/home3.dart';
import 'package:event_app/MVVM/view/screen/Student/result.dart';
import 'package:event_app/MVVM/view/screen/Student/result_details3.dart';
import 'package:event_app/MVVM/view/screen/Student/splashscreen3.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

late Size mq;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return GetMaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
               colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:
      //admin page list
      //CustomBottomNavigationBar(name1: "Student",name2: "Organizer",name3: "Event",),
      //Splashscreen1(),
      //Organizerlist1(),
     //StudentDetails1(),
     //Event1(),
     //Organizer1(),
     //OrganizerAssign(),
    // Assign1(),
    //  Eventadd1(),

     //organization pages list

     //SplashScreen2(),
     //login2(),
    //  registration_2(),
    //  assign2(),
    // EditEvent(),
  //  EventParticipants1(),
  //  EventResult(), 
  // CustomTopBar(),
  // EventParticipants1(),
     //EventDetails(),
    //  Appeal(),
      // EditEvent2(),
    //  EventParticipantsList(),
    // AddResult(),
      // AppealList()
    //AppealDetail(),
    // UpdateResult(),

    //Student pages list

    //SplashScreen3(),
    //Home3(),
    //Result1(),
    //EventDetails3(),
    //ResultDetails3(),
    //EventApply3(),
    ApplyAppeal3(),
    );
  }
}

