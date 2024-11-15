import 'package:flutter/material.dart';
import 'package:yourpen_1/controls/gradient_button.dart';
import 'package:yourpen_1/controls/shadowed_textfield.dart';

class RefreshPasswordPage extends StatelessWidget {
  const RefreshPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;

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
            child: Column(children: <Widget>[
              const SizedBox(height: 74),
              Container(
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Color(0x4D8545D8),
                      spreadRadius: -5,
                      blurRadius: 100,
                      offset: Offset(10, 15))
                ]),
                child:
                    Image.asset("assets/images/logoyourpen.png", height: 100),
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
              const SizedBox(height: 50),
              const Text("Write your email to get"),
              const Text("instructions"),
              const SizedBox(
                height: 40,
              ),
              const ShadowedTextfield(hintText: "Email"),
              const SizedBox(height: 50,),
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
                    // todo
                  },
                  padding:
                      const EdgeInsets.symmetric(vertical: 18, horizontal: 60),
                  gradient: const LinearGradient(
                      colors: [Color(0xff9D68E4), Color(0xff8545D8)]),
                  borderRadius: 30,
                  child: const Text(
                    "SEND",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              )
            ]),
          ),
        ),
      )));
    }));
  }
}
