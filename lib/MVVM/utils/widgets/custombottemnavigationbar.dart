import 'package:event_app/MVVM/view/screen/Admin/organizer.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:event_app/MVVM/utils/constant/colors.dart';
import 'package:event_app/MVVM/view/screen/Admin/home.dart';
import 'package:event_app/MVVM/view/screen/Admin/organizerList.dart';
import 'package:event_app/MVVM/view/screen/Admin/event.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final String name1;
  final String name2;
  final String ?name3;
  const CustomBottomNavigationBar({super.key, required this.name1, required this.name2, required this.name3});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState
    extends State<CustomBottomNavigationBar> {
  int myCurrentIndex = 0;

  final List<Widget> pages = [
     Home1(),
     Organizerlist1(),
     Event1(),
     Organizer1(),
     

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: pages[myCurrentIndex],
      bottomNavigationBar: SizedBox(height: 104,

        child: FloatingNavbar(
          backgroundColor: primarycolor.c,
          selectedBackgroundColor: Colors.amber,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.white,
          currentIndex: myCurrentIndex,
          onTap: (index) {
            setState(() {
              myCurrentIndex = index;
            });
          },
          items: [
            FloatingNavbarItem(
              icon: Icons.person,
              title: widget.name1,
            ),
            FloatingNavbarItem(
              icon: Icons.list,
              title: widget.name2,
            ),
            FloatingNavbarItem(
              icon: Icons.event,
              title: widget.name3,
            ),
          ],
        ),
      ),
    );
  }
}

