import 'package:event_app/MVVM/utils/constant/colors.dart';
import 'package:event_app/MVVM/utils/widgets/custombutton.dart';
import 'package:flutter/material.dart';

class EventDetails3 extends StatelessWidget {
  const EventDetails3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Padding(
          padding: EdgeInsets.only(right: 40),
          child: Text("Event Detail "),
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
            Text("Mohiniyattam",style: TextStyle(fontSize:20),),
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
                              padding: EdgeInsets.only(top: 10,left: 100),
                              child: Text("Date"),
                            ),
                          ),
                          
                          Padding(
                            padding: EdgeInsets.only(top: 10,left: 40),
                            child: Text("18/07/23",style: TextStyle(color: grey.c)),  
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          SizedBox(height: 50,
                            child: Padding(
                              padding: EdgeInsets.only(top: 10,left: 100),
                              child: Text("Stage No"),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10,left: 40),
                            child: Text("02",style: TextStyle(color: grey.c)),  
                          ),
                        ],
                      ),
                      TableRow(children: [
                        SizedBox(height: 50,
                          child: Padding(padding:  EdgeInsets.only(top: 10,left: 100),
                          child: Text("Time"),
                          ),
                        ),
                        Padding(padding:  EdgeInsets.only(top: 10,left: 40),
                        child: Text("1:30 pm",style: TextStyle(color: grey.c),),
                        ),
                      ]),
                      
                      TableRow(children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10,left: 100),
                          child: Text("Location"),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10,left: 40),
                          child: Text("Ground",style: TextStyle(color: grey.c)),
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
                    padding: const EdgeInsets.only(top: 180),
                    child: SizedBox(height: 50,width: 370,
                      child: Custombutton(
                        color: primarycolor.c,
                        onpress: () {},
                        text: "Apply",
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
