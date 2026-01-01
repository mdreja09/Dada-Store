import 'dart:developer';

import 'package:dada_ecommerce/view/authentication/sign_in/sign.dart';
import 'package:dada_ecommerce/view/product/ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  autoNavigate() async{
    await Future.delayed(Duration(seconds: 3));
    FlutterSecureStorage storage = FlutterSecureStorage();
    var t = await storage.read(key: 'token');
    log("TTTT : $t");

    if (t == null){
      Navigator.push(context, MaterialPageRoute(builder: (c)=> LoginRegister()));
    }else{
      Navigator.push(context, MaterialPageRoute(builder: (c)=> ProductScreen()));
    }

   // Future.delayed(Duration(seconds: 3));

  }
  @override
  void initState() {
    autoNavigate();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center( child: Image.asset("assets/image/datastore.jpg"),),
    );
  }
}
