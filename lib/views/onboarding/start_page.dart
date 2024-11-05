import 'package:flutter/material.dart';
import 'package:yourpen_1/controls/gradient_button.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final logo = Image.asset("assets/images/logoyourpen.png", height: 100);

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 74),
            Container(
              decoration: const BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Color(0x4D8545D8),
                    spreadRadius: -5,
                    blurRadius: 100,
                    offset: Offset(10, 15))
              ]),
              child: logo,
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
                      color: Color(0xff6B4EA2),
                      fontSize: 32,
                      fontFamily: "GentiumBasic"))
            ])),
            const SizedBox(height: 50),
            GradientButton(
              onPressed: () {},
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 48),
              gradient: const LinearGradient(
                  colors: [Color(0xff9D68E4), Color(0xff8545D8)]),
              borderRadius: 30,
              child: const Text(
                "START",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w900),
              ),
            )
            // child: const Text("Start"))
          ],
        ),
      ),
    );
  }
}
