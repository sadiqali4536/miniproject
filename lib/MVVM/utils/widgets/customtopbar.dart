import 'package:event_app/MVVM/utils/constant/colors.dart';
import 'package:event_app/MVVM/view/screen/Organizer/event_participants.dart';
import 'package:event_app/MVVM/view/screen/Organizer/event_result.dart';
import 'package:event_app/MVVM/view/screen/Student/home3.dart';
import 'package:flutter/material.dart';

class CustomTopBar extends StatefulWidget {
  const CustomTopBar({super.key});

  @override
  State<CustomTopBar> createState() => _CustomTopBarState();
}

class _CustomTopBarState extends State<CustomTopBar> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 50),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(34, 118, 187, 0.44),
                borderRadius: BorderRadius.circular(5),
              ),
              child: TabBar(
                controller: tabController,
                indicator: BoxDecoration(
                  color: const Color.fromRGBO(253, 190, 64, 1),
                  borderRadius: BorderRadius.circular(5),
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                tabs: const [
                  Tab(text: 'Event'),
                  Tab(text: 'Result'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  EventParticipants1(), 
                  EventResult(),
                  Home3(),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
