import 'package:flutter/material.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();


  bool isSignIn = true; // 🔥 tab control
  bool _obscure = true; // 🔥 password visibility
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,

        leading: InkWell(
            focusColor: Colors.green,
            onTap: (){
              setState(() {



              });

              // Navigator.pop(context,MaterialPageRoute(builder: (context)=>LoginScreen()));
            },
            child: Image.asset("assets/image/back.png")),
        centerTitle: true,
        title: Image.asset("assets/image/w_logo.png"),
        //title: Center(child: Text("Data"),) ,
        // title: Image.asset(height: 20, width: 120, "assets/image/w_logo.png"),
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [




          Divider(thickness: 3, color: Colors.grey),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Form(
                  key:_formKey ,
                  child: Column(
                    spacing: 0,

                    children: [
                      SizedBox(height: 21, width: 236),

                      Text(
                        "Sign In",
                        style: TextStyle(
                          color: Color(0xff5F5F5F),
                          fontWeight: FontWeight.w500,
                          fontSize: 21,
                        ),
                      ),
                      SizedBox(height: 3, width: 179),
                      Container(height: 3, width: 179, color: Color(0xffF4A758)),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    SizedBox(height: 21, width: 236),

                    Text(
                      "Sign In",
                      style: TextStyle(
                        color: Color(0xff5F5F5F),
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 3, width: 179),

                    Container(height: 3, width: 179, color: Colors.grey),
                  ],
                ),
              ),
            ],
          ),
          Column(
           mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [


              Text("data"),
              Text("d")
            ],
          ),



          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                /// 🔹 PHONE NUMBER
                const Text(
                  "Phone Number",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 10),

                TextFormField(
                  keyboardType: TextInputType.phone,
                  validator: (v) {
                    if (v == null || v.isEmpty) {
                      return "Please enter phone number";
                    }
                    if (!RegExp(r'^01[3-9]\d{8}$').hasMatch(v)) {
                      return "Enter valid Bangladeshi number";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: "01XXXXXXXXX",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),


                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    const SizedBox(height: 20),

                    //2nd part in cloumn
                    /// 🔹 PASSWORD
                    const Text(
                      "Password",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 10),

                    TextFormField(
                      obscureText: _obscure,
                      validator: (v) {
                        if (v == null || v.isEmpty) {
                          return "Password required";
                        }
                        if (v.length < 6) {
                          return "Password must be at least 6 characters";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "********",
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscure ? Icons.visibility_off : Icons.visibility,
                          ),
                          onPressed: () {
                            setState(() => _obscure = !_obscure);
                          },
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),

                    const SizedBox(height: 30),
                  ],
                ),



                /// 🔥 SUBMIT BUTTON

              ],


            ),


          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              SizedBox(
                height: 52,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffF4A758),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Form Valid ✅")),
                      );
                    }
                  },
                  child: Text(
                    isSignIn ? "Sign In" : "Register",
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ],
          )



        ],

      ),
    );
  }
}
