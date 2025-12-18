import 'package:dada_ecommerce/widget/appbar/appbar.dart';
import 'package:flutter/material.dart';

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
              decoration: BoxDecoration(
                color: Colors.grey,

              ),



            ),
             Row(
               spacing: 20,
               mainAxisAlignment: MainAxisAlignment.spaceAround,

              children: [

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          selected =1;

                        });

                      },
                      child: Column(
                        spacing: 10,
                        children: [
                          Text("Sign in",style: TextStyle(fontSize: 25),
                          ),
                          Container(height: 2,
                            color: selected == 1 ? Colors.orange : Colors.grey,
                              width: MediaQuery.sizeOf(context).width/2,)
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(

                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      spacing: 10,

                      children: [
                        Text("Sign in",style: TextStyle(fontSize: 25),),
                        Container(height: 2,color: Colors.blue,
                          width: MediaQuery.sizeOf(context).width/2,)
                      ],
                    ),
                  ),
                ),


              ],
            ),

          ],
        ),
      ),



    );
  }
}
