import 'package:flutter/material.dart';

class LoginRegister extends StatefulWidget {
  const LoginRegister({super.key});

  @override
  State<LoginRegister> createState() => _LoginRegisterState();
}

class _LoginRegisterState extends State<LoginRegister> {
  final _formKey = GlobalKey<FormState>();

  bool isSignIn = true; // 🔥 tab control
  bool _obscure = true; // 🔥 password visibility

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Image.asset("assets/image/back.png"),
        ),
        centerTitle: true,
        title: Image.asset("assets/image/w_logo.png", height: 30),
      ),

      body: Form(
        key: _formKey, // ✅ একটাই Form
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [

            /// 🔥 SIGN IN / REGISTER TAB
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() => isSignIn = true);
                    },
                    child: Column(
                      children: [
                        Text(
                          "Sign In",
                          style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.w500,
                            color: isSignIn
                                ? const Color(0xffF4A758)
                                : Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Container(
                          height: 3,
                          color: isSignIn
                              ? const Color(0xffF4A758)
                              : Colors.grey,
                        )
                      ],
                    ),
                  ),
                ),

                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() => isSignIn = false);
                    },
                    child: Column(
                      children: [
                        Text(
                          "Register",
                          style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.w500,
                            color: !isSignIn
                                ? const Color(0xffF4A758)
                                : Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Container(
                          height: 3,
                          color: !isSignIn
                              ? const Color(0xffF4A758)
                              : Colors.grey,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

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

            const SizedBox(height: 20),

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

            /// 🔥 SUBMIT BUTTON
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
        ),
      ),
    );
  }
}
