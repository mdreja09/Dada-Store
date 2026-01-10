import 'package:flutter/material.dart';
class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
     ) ,
    );
  }
}
