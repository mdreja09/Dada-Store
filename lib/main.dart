


import 'package:dada_ecommerce/view/authentication/register/register.dart';
import 'package:dada_ecommerce/view/authentication/sign_in/sign.dart';
import 'package:dada_ecommerce/view/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void main (){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: EasyLoading.init(),
      debugShowCheckedModeBanner: false,
      home: LoginRegister(),
    );
  }
}

