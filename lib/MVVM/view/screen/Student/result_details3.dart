import 'package:event_app/MVVM/utils/constant/colors.dart';
import 'package:event_app/MVVM/utils/widgets/custombutton.dart';
import 'package:flutter/material.dart';

class ResultDetails3 extends StatelessWidget {
  const ResultDetails3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Event Result ',style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left:  140,top: 10),
              child: Text("Mohiniyattam",style: TextStyle(fontSize: 20),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Table(
                children:  [
                  TableRow(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 110),
                          child: Text(
                            "Date:",style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text("18/07/23",style: TextStyle(color: grey.c,fontSize: 16),),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 110),
                          child: Text(
                            "Stage No",style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text("02",style: TextStyle(color: grey.c,fontSize: 16),),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 110),
                          child: Text(
                            "Time",style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text("1:30 pm",style: TextStyle(color: grey.c,fontSize: 16),),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 110),
                          child: Text(
                            "Location",style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text("Ground",style: TextStyle(color: grey.c,fontSize: 16),),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text("Result",style: TextStyle(
                fontSize: 16,fontWeight: FontWeight.bold),),
            ),
            Center(
              child: Container(
                height: 400,
                width: 370,
                decoration: BoxDecoration(
                  color: secondarycolor.c,
                  image: DecorationImage(
                    image: NetworkImage("https://cdn-icons-png.flaticon.com/512/4904/4904233.png",
                    scale: 10, 
                    )),
                  borderRadius: BorderRadius.circular(20),border: Border.all(width: 1)),
              ),
            ),
            SizedBox(height: 30,),
            Center(
              child: SizedBox(height: 50,width: 370,
                child: Custombutton(
                  color: primarycolor.c,
                   onpress: (){},
                    text: "Appeal"),
              ),
            )
          ],
        ),
      )
    );
  }
}
