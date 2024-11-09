import 'package:flutter/material.dart';

class ShadowedTextfield extends StatelessWidget {
  final bool obscureText;
  final String hintText;

  const ShadowedTextfield(
      {super.key, required this.hintText, this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white, 
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 20,
            offset: const Offset(0,0)
          )
        ]
      ),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(
              fontWeight: FontWeight.w600
            ),
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(horizontal: 16)),
      ),
    );
  }
}
