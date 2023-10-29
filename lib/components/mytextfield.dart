import 'package:flutter/material.dart';
class MyTextField extends StatelessWidget {

  final controller;
  final String hintText;
  final bool obscureText;
  MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color:Colors.grey),),
            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color:Colors.purple.shade300)),
            fillColor: Colors.grey.shade200,
            filled: true,
            hintText: hintText,
          )
      ),
    );
  }
}
