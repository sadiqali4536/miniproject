import 'package:event_app/MVVM/utils/constant/colors.dart';
import 'package:event_app/MVVM/utils/widgets/custombutton.dart';
import 'package:flutter/material.dart';

class Assign1 extends StatefulWidget {
  Assign1({super.key});

  @override
  State<Assign1> createState() => _Assign1State();
}

class _Assign1State extends State<Assign1> {
  bool isChecked1 = false; 
  bool isChecked2 =false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assign"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   Transform.scale(
                    scale: 2.0,
                     child: Checkbox(
                              value: isChecked1,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked1 = value ?? false;
                                });
                              },
                              activeColor: Colors.white,
                              checkColor: Colors.black,
                            ),
                   ),
                  Card(
                    color: primarycolor.c,
                    child: SizedBox(
                      height: 70,
                      width: 300,
                      child: Row(
                        children: [
                          const SizedBox(width: 10),
                         
                          const SizedBox(width: 15),
                          Text(
                            "Kathakali",
                            style: TextStyle(fontSize: 18,color: secondarycolor.c),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        
              children: [
                Transform.scale(
                          scale: 2.0,
                          child: Checkbox(
                            
                            value: isChecked2,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked2 = value ?? false;
                              });
                            },
                            
                            activeColor: Colors.white,
                            checkColor: Colors.black,
                          ),
                        ),
                Card(
                  color: primarycolor.c,
                  child: SizedBox(
                    height: 70,
                    width: 300,
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        
                        const SizedBox(width: 15),
                        Text(
                          "kolkali",
                          style: TextStyle(fontSize: 18,color: secondarycolor.c),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 420),
              child: SizedBox(height: 60,width: 380,
                child: Custombutton(color:primarycolor.c,
                 onpress: (){}, text: "Submit"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
