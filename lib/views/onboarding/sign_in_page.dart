import 'package:flutter/material.dart';
import 'package:yourpen_1/controls/shadowed_textfield.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
        builder: (BuildContext buildContext, BoxConstraints constraints) {
      return SingleChildScrollView(
          child: Center(
              child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ConstrainedBox(
          constraints:
              BoxConstraints(minHeight: constraints.maxHeight, maxWidth: 500),
          child: IntrinsicHeight(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    const SizedBox(height: 74),
                    Container(
                      decoration: const BoxDecoration(boxShadow: [
                        BoxShadow(
                            color: Color(0x4D8545D8),
                            spreadRadius: -5,
                            blurRadius: 100,
                            offset: Offset(10, 15))
                      ]),
                      child: Image.asset("assets/images/logoyourpen.png",
                          height: 100),
                    ),
                    const SizedBox(height: 10),
                    RichText(
                        text: const TextSpan(children: [
                      TextSpan(
                          text: "Your",
                          style: TextStyle(
                              color: Color(0xff8545D8),
                              fontSize: 32,
                              fontFamily: "GentiumBasic")),
                      TextSpan(
                          text: "Pen",
                          style: TextStyle(
                              color: Color(0xff606060),
                              fontSize: 32,
                              fontFamily: "GentiumBasic"))
                    ])),
                    const SizedBox(height: 80),
                    const ShadowedTextfield(hintText: "Email")
                  ],
                ),
                const Column(
                  children: <Widget>[
                    SizedBox(
                      height: 100,
                    ),
                    Text("Bottom text"),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      )));
    }));
  }
}
