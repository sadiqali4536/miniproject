import 'package:event_app/MVVM/utils/constant/colors.dart';
import 'package:event_app/MVVM/utils/widgets/customTextformfield.dart';
import 'package:event_app/MVVM/utils/widgets/custombutton.dart';
import 'package:flutter/material.dart';

class AppealDetail extends StatelessWidget {
  AppealDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Appeal Detail"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const Text(
                "Event Name",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              CustomtexFormField(
                hinttext: "Margamkali",
                hintstyle: TextStyle(color: grey.c),
                onpress: () {},
                color: secondarycolor.c,
              ),
              const SizedBox(height: 20),
              const Text(
                "Video Link",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              CustomtexFormField(
                hinttext: "www,httrsgssbz",
                hintstyle: TextStyle(color: blue.c),
                onpress: () {},
                color: secondarycolor.c,
              ),
              const SizedBox(height: 20),
              const Text(
                "Description",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 150,
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: secondarycolor.c,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: grey.c),
                ),
               
              ),
              const SizedBox(height: 180),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(height: 50,width: 180,
                    child: Custombutton(
                      color: Colors.green,
                      onpress: () {
                      },
                      text: "Accept",
                    ),
                  ),
                  SizedBox(height: 10,),
                  SizedBox(height: 50,width: 180,
                    child: Custombutton(
                      color: Colors.red,
                      onpress: () {
                      },
                      text: "Reject",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
