import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,

        leading: InkWell(
          focusColor: Colors.green,
          onTap: () {
            setState(() {});

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
    );
  }
}
