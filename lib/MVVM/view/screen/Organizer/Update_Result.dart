import 'package:event_app/MVVM/utils/constant/colors.dart';
import 'package:event_app/MVVM/utils/widgets/customTextformfield.dart';
import 'package:event_app/MVVM/utils/widgets/custombutton.dart';
import 'package:flutter/material.dart';

class UpdateResult extends StatelessWidget {
  const UpdateResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
        title: const Text("Update Result"),
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
                style: TextStyle(fontSize: 18,),
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
                style: TextStyle(fontSize: 18, ),
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
                style: TextStyle(fontSize: 18, ),
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
              SizedBox(height: 20,),
               Text(
                "Result",
                style: TextStyle(fontSize: 18,),
              ),
             Container(
                height: 150,
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: secondarycolor.c,
                  // image:  DecorationImage(
                  //   image: NetworkImage(
                  //       "https://cdn-icons-png.flaticon.com/512/4904/4904233.png"),
                  //   fit: BoxFit.cover,
                  // ),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: grey.c),
                ),
                child: Center(
                  child: Image.network('https://cdn-icons-png.flaticon.com/512/4904/4904233.png'),
                ),
              ),
              const SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(height: 50,width: 370,
                    child: Custombutton(
                      color: primarycolor.c,
                      onpress: () {
                      },
                      text: "Submit",
                    ),
               
                  ),
                ],
              ),
            ],
          ),
        ),
      )
    ); 
  }
}