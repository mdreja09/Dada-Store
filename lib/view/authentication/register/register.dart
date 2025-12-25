import 'dart:convert';
import 'dart:developer';

import 'package:dada_ecommerce/controller/auth/reg.dart';
import 'package:dada_ecommerce/view/authentication/widget/custom_text_field.dart';
import 'package:flutter/material.dart';

import '../widget/CustomButton.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  int selected = 1;
  bool isSignIn = true; // 🔥 tab control
  bool _obscure = true; // 🔥 password visibility
  bool isBlue = true;
  final TextEditingController nameC = TextEditingController();
  final TextEditingController phoneC = TextEditingController();
  final TextEditingController emailC = TextEditingController();
  final TextEditingController addressC = TextEditingController();
  final TextEditingController passC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Form(
          key: _formKey,
          child: selected == 0
              ? LoginScreen()
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 29, width: 170),
                    Text(
                      "Let’s Get Started!",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                      ),
                    ),
                    SizedBox(width: 18),
                    Text(
                      "Please enter your details to register",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),

                    SizedBox(width: 171, height: 21),

                    Text(
                      "Phone Number",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),

                    SizedBox(height: 16, ),

                    CustomTextField(
                      nameC: nameC,
                      validator: (v) {
                        if (v == null || v == "") {
                          return " Enter Your Name";
                        } else
                          return null;
                      },
                      text: 'Enter Your  Name',
                    ),
                    SizedBox(height: 15),
                    CustomTextField(
                      nameC: phoneC,
                      validator: (v) {
                        if (v == null || v == "") {
                          return " Enter Your Phone";
                        } else
                          return null;
                      },
                      text: 'Enter Your Phone Number',
                    ),
                    SizedBox(height: 15),
                    CustomTextField(
                      nameC: emailC,
                      validator: (v) {
                        if (v == null || v == "") {
                          return " Enter Your email ";
                        } else
                          return null;
                      },
                      text: 'Enter Your Email',
                    ),
                    SizedBox(height: 15),
                    CustomTextField(
                      nameC: addressC,
                      validator: (v) {
                        if (v == null || v == "") {
                          return " Enter Your Address";
                        } else
                          return null;
                      },
                      text: 'Enter Your Address',
                    ),
                    SizedBox(height: 15),
                    CustomTextField(
                      nameC: passC,
                      validator: (v) {
                        if (v == null || v == "") {
                          return " Enter Your Password";
                        } else
                          return null;
                      },
                      text: 'Enter Your  Password',
                    ),
                    SizedBox(height: 15),


                    GestureDetector(

                      child: CustomButton(text: 'Register',
                        onTap: () {
                          //if (_formKey.currentState!.validate()){

                            var a = {
                              "name" : nameC.text,
                              "phone" : phoneC.text,
                              "email" : emailC.text,
                              "address" : addressC.text,
                              "password" : passC.text
                            };
                            log("======${jsonEncode(a)}=====");
                            RegController().createAccountFun();




                      }


                        )

                    ),
                    Row(
                      children: [
                        SizedBox(width: 100, height: 60),
                        Container(
                          height: 2,
                          width: 100,
                          decoration: BoxDecoration(color: Colors.grey),
                        ),
                        Text("OR", style: TextStyle(fontSize: 18)),
                        Container(
                          height: 2,
                          width: 100,
                          decoration: BoxDecoration(color: Colors.grey),
                        ),
                      ],
                    ),

                    //Google Sign in with google
                    Container(
                      height: 52,
                      width: 420,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1),

                        color: Color(0xffF4A7580F).withOpacity(0.12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/image/google.png",
                            height: 30,
                            width: 30,
                          ),

                          SizedBox(width: 18),

                          Text(
                            "Sig in with google",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),

                      //child: Text("Sig in with google"),
                    ),

                    ////...........Facebook Account
                    SizedBox(height: 35),
                    Container(
                      height: 52,
                      width: 420,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1),

                        color: Color(0xffF4A7580F).withOpacity(0.12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/image/facebook.png",
                            height: 30,
                            width: 30,
                          ),

                          SizedBox(width: 18),

                          Text(
                            "Sig in with Facebook",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),

                      //child: Text("Sig in with google"),
                    ),
                    SizedBox(
                      height: 67,
                      child: Center(
                        child: RichText(
                          text: TextSpan(
                            text: "Already have an account?",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Color(0xff424242),
                            ),
                            children: [
                              TextSpan(
                                text: "Log In",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffF4A758),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // ElevatedButton(
                    //
                    //   onPressed: () {
                    //     if (_formKey.currentState!.validate()) {
                    //       print("ok");
                    //     }
                    //   },
                    //   child: Text("Submit"),
                    // ),
                  ],
                ),
        ),
      ],
    );
  }
}




