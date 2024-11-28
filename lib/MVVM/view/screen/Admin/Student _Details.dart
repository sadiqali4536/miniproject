import 'package:event_app/MVVM/utils/constant/colors.dart';
import 'package:event_app/MVVM/utils/widgets/custombutton.dart';
import 'package:flutter/material.dart';

class StudentDetails1 extends StatelessWidget {
  const StudentDetails1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Padding(
          padding: EdgeInsets.only(right: 40),
          child: Text("Student Detail"),
        )),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: CircleAvatar(
                radius: 50,
                child: Image.asset("assets/user.png"), 
              ),
            ),
            SizedBox(height: 20,),
            Text("Name",style: TextStyle(fontSize:20),),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10), 
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 20,),
                  Table(
                    children: const [
                      TableRow(
                        children: [
                          SizedBox(height: 50,
                            child: Padding(
                              padding: EdgeInsets.only(top: 10,left: 80),
                              child: Text("ID Number"),
                            ),
                          ),
                          
                          Padding(
                            padding: EdgeInsets.only(top: 10,left: 50),
                            child: Text("000000",style: TextStyle(color: grey.c)),  
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          SizedBox(height: 50,
                            child: Padding(
                              padding: EdgeInsets.only(top: 10,left: 80),
                              child: Text("Department"),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10,left: 50),
                            child: Text("BSc computer",style: TextStyle(color: grey.c)),  
                          ),
                        ],
                      ),
                      TableRow(children: [
                        SizedBox(height: 50,
                          child: Padding(padding:  EdgeInsets.only(top: 10,left: 80),
                          child: Text("Phone No"),
                          ),
                        ),
                        Padding(padding:  EdgeInsets.only(top: 10,left: 50),
                        child: Text("987654332",style: TextStyle(color: grey.c),),
                        ),
                      ]),
                      
                      TableRow(children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10,left: 80),
                          child: Text("Location"),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10,left: 50),
                          child: Text("Collage",style: TextStyle(color: grey.c)),
                        )])
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 5),
                    child: SizedBox(height: 50,width: 150,
                      child: Custombutton(
                        color: Colors.green,
                        onpress: () {},
                        text: "Accept",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 5,),
                    child: SizedBox(height: 50,width: 150,
                      child: Custombutton(
                        color: Colors.red,
                        onpress: () {},
                        text: "Reject",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
