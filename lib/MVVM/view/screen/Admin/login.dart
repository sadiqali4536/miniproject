import 'package:event_app/MVVM/utils/constant/colors.dart';
import 'package:event_app/MVVM/utils/widgets/custombottemnavigationbar.dart';
import 'package:event_app/MVVM/utils/widgets/custombutton.dart';
import 'package:event_app/MVVM/utils/widgets/customform_field.dart';
import 'package:event_app/main.dart';
import 'package:flutter/material.dart';

class Login1 extends StatefulWidget {
  const Login1({super.key});

  @override
  State<Login1> createState() => _Login1State();
}

class _Login1State extends State<Login1> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController=TextEditingController();
  String username="admin";
  String password="1111";
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key:formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 24, 
                  fontWeight: FontWeight.bold,color: primarycolor.c),
                ),
              ),
              SizedBox(height: 50,),
              SizedBox(width: mq.width *0.8,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: CustomFormField(
                    controller: usernameController,
                    hinttext: "Enter Username",
                    heplertext: "Your unique username",
                    hintstyle: const TextStyle(color: fontcolor.c),
                              
                    prefixicon: const Icon(Icons.person_rounded,color: grey.c,),
                  
                    validator:(value) {
                      if(usernameController.text.isEmpty){
                      return"Enter your Username";}
                      else if(usernameController.text!=username){
                        return"invalid Username";
                      }
                      return null;
                    },
  
                  ),
                ),
              ),
              SizedBox(width: mq.width *0.8,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: CustomFormField(
                    controller: passwordController,
                    hinttext: "Enter Password",
                   heplertext: "Your unique Password",
                    hintstyle: const TextStyle(color:fontcolor.c ,),
                    prefixicon: const Icon(Icons.lock_rounded,color: grey.c,),
                     validator:(value) {
                      if(passwordController.text.isEmpty){
                      return"Enter your password";}
                      else if(passwordController.text!=password){
                        return"invalid password";
                      }
                      return null;
                    }
                    ),
                ),
              ),
              SizedBox(width: mq.width *0.8,
              height: 45,
                child: Custombutton(
                  color: primarycolor.c,
                   onpress: (){
                    if (formkey.currentState!.validate()){
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Login Successfull!"),
                        backgroundColor: Colors.green,)
                        );
                        Navigator.push(context,MaterialPageRoute(builder: (v)=>const CustomBottomNavigationBar(name1:'Student' ,
                        name2:"oOrganizer" ,name3: 'Event',)));
                    }
                }, text: "Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
