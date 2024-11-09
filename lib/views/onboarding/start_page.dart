import 'package:flutter/material.dart';
import 'package:yourpen_1/controls/gradient_button.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yourpen_1/routes/route_names.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  void navigateToSignIn(BuildContext context) {
    Navigator.pushReplacementNamed(context, RouteNames.signIn);
  }

  @override
  Widget build(BuildContext context) {
    final logo = Image.asset("assets/images/logoyourpen.png", height: 100);

    return Scaffold(
        body: Stack(
      children: <Widget>[
        Positioned(
            bottom: 150,
            left: -50,
            child: Opacity(
                opacity: 0.05,
                child: SvgPicture.asset(
                  "assets/images/pero.svg",
                ))
                ),
        Positioned(
            bottom: -50,
            right: -30,
            child: Opacity(
                opacity: 0.05,
                child: SvgPicture.asset(
                  "assets/images/pero.svg",
                ))
                ),
        Center(
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
                        color: Color(0xff606060),
                        fontSize: 32,
                        fontFamily: "GentiumBasic"))
              ])
              ),
              const SizedBox(height: 50),
              const Text(
                "Everything you wish to",
                style: TextStyle(fontSize: 20, color: Color(0xff606060), fontWeight: FontWeight.w600),
              ),
              // const Text(""),
              RichText(
                  text: const TextSpan(children: [
                TextSpan(
                    text: "write down",
                    style: TextStyle(
                        color: Color(0xff5946D2),
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Raleway")),
                TextSpan(
                    text: " in one place",
                    style: TextStyle(
                        color: Color(0xff606060),
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Raleway"))
              ])
              ),
              const SizedBox(height: 70),
              Container(
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Color.fromARGB(129, 134, 70, 217),
                      spreadRadius: 5,
                      blurRadius: 60,
                      offset: Offset(10, 15))
                ]),
                child: GradientButton(
                  onPressed: () {
                    navigateToSignIn(context);
                  },
                  padding:
                      const EdgeInsets.symmetric(vertical: 18, horizontal: 60),
                  gradient: const LinearGradient(
                      colors: [Color(0xff9D68E4), Color(0xff8545D8)]),
                  borderRadius: 30,
                  child: const Text(
                    "START",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    ));
  }
}
