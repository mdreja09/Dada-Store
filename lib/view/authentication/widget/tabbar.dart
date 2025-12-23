import 'package:flutter/material.dart';
class TabBarWidget  extends StatelessWidget {
  const TabBarWidget ({super.key, required this.onTap, required this.selected, required this.title});

  final VoidCallback onTap ;
  final int selected ;
  final String title ;
  @override
  Widget build(BuildContext context) {
    return Expanded(

      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: InkWell(
          onTap: onTap,
          child: Column(
            spacing: 12,

            children: [
              Text(title,
                style: TextStyle(fontSize: 25),),
              Container(height: 3,
                color: selected == 1 ?Colors.orange :Colors.grey,
                width: double.infinity,

                //width: MediaQuery.sizeOf(context).width/2
                )
            ],
          ),
        ),
      ),
    );
  }
}
