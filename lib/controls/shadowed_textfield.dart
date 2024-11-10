import 'package:flutter/material.dart';

class ShadowedTextfieldState extends State<ShadowedTextfield> {
  late String hintText;
  late bool isObscured;
  late bool isPassword;
  late bool isReadOnly;
  // late TextEditingController controller;

  @override
  void initState() {
    super.initState();

    isObscured = widget.isPassword;
    isPassword = widget.isPassword;
    isReadOnly = widget.isReadOnly;
    hintText = widget.hintText;
  }

  void toggleObscurity() {
    setState(() {
      isObscured = !isObscured;
    });
  }

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
                offset: const Offset(0, 0))
          ]),
      child: TextField(
        obscureText: isObscured,
        readOnly: isReadOnly,
        style: TextStyle(
          color: Color(0xff606060),
          fontWeight: FontWeight.w600
        ),
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(
                fontWeight: FontWeight.w600, color: Color(0xffD6C9E8)),
            border: InputBorder.none,
            suffixIcon: isPassword
                ? IconButton(
                    onPressed: () {
                      toggleObscurity();
                    },
                    icon: Icon(
                        color: Color(0xffD6C9E8),
                        isObscured ? Icons.visibility : Icons.visibility_off))
                : null,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 16)),
      ),
    );
  }
}

class ShadowedTextfield extends StatefulWidget {
  final String hintText;
  final bool isPassword;
  final bool isReadOnly;
  // final TextEditingController? controller;

  const ShadowedTextfield(
      {super.key,
      required this.hintText,
      this.isPassword = false,
      this.isReadOnly = false});

  @override
  ShadowedTextfieldState createState() => ShadowedTextfieldState();
}
