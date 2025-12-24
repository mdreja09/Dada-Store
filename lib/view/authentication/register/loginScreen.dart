import 'package:flutter/material.dart';

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

                    //3nd part
                    SizedBox(width: 171, height: 21),

                    Text(
                      "Password",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                      ),
                    ),

                    SizedBox(height: 17, width: 171),

                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: TextFormField(
                        obscureText: _obscure,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Password required";
                          }
                          if (!RegExp(
                            r'^(?=.*[A-Za-z])(?=.*\d).{8,}$',
                          ).hasMatch(value)) {
                            return "Use letters & numbers (8+)";
                          }
                          return null;
                        },

                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscure
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),

                            onPressed: () {
                              setState(() {
                                _obscure = !_obscure;
                              });
                            },
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                          ),

                          focusColor: Colors.blueAccent,
                          hintText: "Enter password",
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 20,
                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Forgot Password",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffF4A758),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //////////////////////////////
                    //////////////////////
                    GestureDetector(
                      // onTap: () {
                      //   Navigator.pushReplacement(
                      //     context,
                      //     MaterialPageRoute(builder: (context) => Home()),
                      //   );
                      // },
                      child: Container(
                        height: 52,
                        width: 420,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1),
                          color: Color(0xffF4A758),
                        ),
                        child: Center(
                          child: Text(
                            "Register",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
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

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.nameC,
    required this.validator,
    required this.text,
  });

  final TextEditingController nameC;
  final FormFieldValidator validator;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: nameC,
      keyboardType: TextInputType.phone,
      validator: validator,

      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        focusColor: Colors.blueAccent,
        hintText: "$text",
      ),
    );
  }
}
