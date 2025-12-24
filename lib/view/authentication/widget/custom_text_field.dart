import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.nameC,
    required this.validator,
    required this.text,
  });

  final TextEditingController nameC;
  final FormFieldValidator validator;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: nameC,
      keyboardType: TextInputType.phone,
      validator: validator,

      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        focusColor: Colors.blueAccent,
        hintText: "$text",
      ),
    );
  }
}