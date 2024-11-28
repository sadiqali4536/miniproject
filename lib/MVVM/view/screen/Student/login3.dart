import 'package:event_app/MVVM/utils/constant/colors.dart';
import 'package:event_app/MVVM/utils/widgets/custombutton.dart';
import 'package:event_app/MVVM/utils/widgets/customform_field.dart';
import 'package:event_app/MVVM/view/screen/Organizer/assign_2.dart';
import 'package:event_app/MVVM/view/screen/Organizer/registration_2.dart';
import 'package:event_app/MVVM/view/screen/Student/registration3.dart';
import 'package:event_app/main.dart';
import 'package:flutter/material.dart';

class Login3 extends StatefulWidget {
  const Login3({super.key});

  @override
  State<Login3> createState() => _login2State();
}

class _login2State extends State<Login3> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController=TextEditingController();
  String username="student";
  String password="3333";
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key:formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 60,),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 24, 
                    fontWeight: FontWeight.bold,color: primarycolor.c),
                  ),
                ),
                SizedBox(height: 70,),
                SizedBox(width: mq.width *0.8,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 30),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>assign2()));
                      if (formkey.currentState!.validate()){
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text("Login Successfull!"),
                          backgroundColor: Colors.green,)
                          );
                         // Navigator.push(context,MaterialPageRoute(builder: (v)=> //pagename()));
                      }
                  }, text: "Login"),
                ),
                SizedBox(height: 20,),
                TextButton(
                  onPressed: (){     
                    Navigator.push(context,MaterialPageRoute(builder: (v)=> Registration3()));
},
                   child: Text("Create  new Account")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
