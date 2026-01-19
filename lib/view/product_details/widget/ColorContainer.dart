import 'package:flutter/material.dart';
class ColorContainerWidget extends StatelessWidget {
  const ColorContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(13),

              border: Border.all(color: Color(0xffFF8900),width: 3)

          ),
        ),
        SizedBox(width: 10,),
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(13),

            //border: Border.all(color: Color(0xffFF8900),width: 3)

          ),
        ),
        SizedBox(width: 13,),
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(13),

            // border: Border.all(color: Color(0xffFF8900),width: 3)

          ),
        ),
        SizedBox(width: 13,),
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            color: Color(0xff800000),
            borderRadius: BorderRadius.circular(13),

            // border: Border.all(color: Color(0xffFF8900),width: 3)

          ),
        ),
        SizedBox(width: 13,),
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            color: Color(0xff5D838C),
            borderRadius: BorderRadius.circular(13),


          ),
        ),

      ],
    );
  }
}