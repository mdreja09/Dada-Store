import 'package:flutter/material.dart';

import '../widget/tabbar.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  int selected = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF0F5F9),
      appBar: AppBar(
        backgroundColor: Color(0xffFFFFFF),

        leading: InkWell(
          focusColor: Colors.green,
          onTap: () {
            Navigator.pop(context);

            //Navigator.pop(context,MaterialPageRoute(builder: (context)=>LoginScreen()));
          },

          child: CircleAvatar(
            backgroundColor: Color(0xffF6F6F6),
            child: Image.asset(fit: BoxFit.fill, "assets/image/back.png"),
          ),
        ),
        centerTitle: true,
        title: Image.asset(height: 30, width: 133, "assets/image/dadaapp.png"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              height: 1,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.grey),
            ),
            Row(
              spacing: 20,
              mainAxisAlignment: MainAxisAlignment.spaceAround,

              children: [
                TabBarWidget(
                  title: "Sign in",
                  onTap: () {
                    setState(() {
                      selected = 1;
                    });
                    selected = 1;
                  },
                  selected: selected,
                ),

                TabBarWidget(
                  title: "Sign up",
                  onTap: () {
                    setState(() {
                      selected = 2;
                    });
                    selected = 2;
                  },
                  selected: selected,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
