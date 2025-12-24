import 'package:dada_ecommerce/view/authentication/register/loginScreen.dart';
import 'package:dada_ecommerce/view/authentication/widget/CustomButton.dart';
import 'package:flutter/material.dart';



class LoginRegister extends StatefulWidget {
  const LoginRegister({super.key});

  @override
  State<LoginRegister> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginRegister> {
  final _formKey = GlobalKey<FormState>();
  int selected = 1;

  bool isSignIn = true; // 🔥 tab control
  bool _obscure = true; // 🔥 password visibility
  bool isBlue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,

        leading: InkWell(
          focusColor: Colors.green,
          onTap: () {
            setState(() {});

            // Navigator.pop(context,MaterialPageRoute(builder: (context)=>LoginScreen()));
          },
          child: Image.asset("assets/image/back.png"),
        ),
        centerTitle: true,
        title: Image.asset("assets/image/w_logo.png"),
        //title: Center(child: Text("Data"),) ,
        // title: Image.asset(height: 20, width: 120, "assets/image/w_logo.png"),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(thickness: 3, color: Colors.grey),

              // Sign in OR Register
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: InkWell(
                      onTap: () {
                        selected = 1;
                        setState(() => isSignIn = true);
                      },
                      child: Column(
                        spacing: 0,

                        children: [
                          SizedBox(height: 21, width: 236),

                          Text(
                            "Sign up",
                            style: TextStyle(
                              color: Color(0xff5F5F5F),
                              fontWeight: FontWeight.w500,
                              fontSize: 21,
                            ),
                          ),
                          SizedBox(height: 3, width: 179),
                          Container(
                            height: 3,
                            width: 179,
                            color: isSignIn ? Color(0xffF4A758) : Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        SizedBox(height: 21, width: 236),

                        /// Register Page Log IN
                        InkWell(
                          onTap: () {
                            setState(() {
                              //isBlue = !isBlue;
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (context) => LoginScreen(),
                              //   ),
                              // );
                            });
                          },

                          //// Register Now
                          child: InkWell(
                            onTap: () {
                              selected = 2;
                              setState(() => isSignIn = false);
                            },
                            focusColor: Colors.amber,

                            child: Text(
                              "Register Now",
                              style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 3, width: 179),

                        Container(
                          height: 3,
                          width: 179,
                          color: !isSignIn ? Colors.orange : Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // 2nd part in cloumn
              Padding(
                padding: const EdgeInsets.only(top: 17, left: 29),
                child: Form(
                  key: _formKey,
                  child: selected == 1
                      ? LoginScreen()
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 29, width: 178),
                            Text(
                              "Welcome back!",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 22,
                              ),
                            ),
                            SizedBox(width: 18),
                            Text(
                              "Please enter your details to register",
                              style: TextStyle(
                                fontSize: 14,
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

                            SizedBox(height: 16, width: 171),
                            Padding(
                              padding: const EdgeInsets.only(right: 16),

                              child: TextFormField(
                                keyboardType: TextInputType.phone,
                                validator: (v) {
                                  if (v == null || v.isEmpty) {
                                    return "Please Enter Number";
                                  }
                                  if (!RegExp(r'^01[3-9]\d{8}$').hasMatch(v)) {
                                    return "Enter a valid Bangladeshi phone number";
                                  }

                                  return null;
                                },

                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  focusColor: Colors.blueAccent,
                                  hintText: "Enter Your Phone Number",
                                ),
                              ),
                            ),

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
                            CustomButton(text: "Login",
                              onTap: (){
                              if (_formKey.currentState!.validate());


                            },
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
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
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
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
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
                                        text: "Register here",
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
                          ],
                        ),
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      print("ok");
                    }
                  },
                  child: Text("Submit"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
