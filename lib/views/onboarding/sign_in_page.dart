import 'package:flutter/material.dart';
import 'package:yourpen_1/controls/gradient_button.dart';
import 'package:yourpen_1/controls/shadowed_textfield.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

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
                    const SizedBox(height: 50),
                    const Text("Please log in or create"),
                    const Text("new account"),
                    const SizedBox(
                      height: 40,
                    ),
                    const ShadowedTextfield(hintText: "Email"),
                    const SizedBox(
                      height: 12,
                    ),
                    const ShadowedTextfield(
                      hintText: "Password",
                      isPassword: true,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          style: TextButton.styleFrom(
                            overlayColor: Colors.transparent,
                            foregroundBuilder: (context, states, child) =>
                                DecoratedBox(
                              decoration: const BoxDecoration(
                                border: Border(
                                    bottom:
                                        BorderSide(color: Color(0xff8545D8))),
                              ),
                              child: child,
                            ),
                          ),
                          onPressed: () {},
                          child: const Text("I forgot password",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff8545D8)))),
                    ),
                    const SizedBox(
                      height: 56,
                    ),
                    GradientButton(
                      onPressed: () {},
                      padding: const EdgeInsets.symmetric(
                          vertical: 18, horizontal: 60),
                      borderRadius: 30,
                      gradient: const LinearGradient(
                          colors: [Color(0xff9D68E4), Color(0xff8545D8)]),
                      child: const Text(
                        "SIGN IN",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 100,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don’t have an account yet?",
                          style: TextStyle(fontSize: 18),
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                              overlayColor: Colors.transparent,
                              foregroundBuilder: (context, states, child) =>
                                  DecoratedBox(
                                decoration: const BoxDecoration(
                                  border: Border(
                                      bottom:
                                          BorderSide(color: Color(0xff8545D8))),
                                ),
                                child: child,
                              ),
                            ),
                            onPressed: () {},
                            child: const Text("Sign up",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff8545D8))))
                      ],
                    ),
                    const SizedBox(
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
