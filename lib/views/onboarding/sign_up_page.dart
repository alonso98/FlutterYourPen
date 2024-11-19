import 'package:flutter/material.dart';
import 'package:yourpen_1/controls/gradient_button.dart';
import 'package:yourpen_1/controls/shadowed_textfield.dart';
import 'package:yourpen_1/routes/route_names.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

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
                    // const Text("Please log in or create"),
                    const Text("Create an account"),
                    const SizedBox(height: 40),
                    ShadowedTextfield(
                      hintText: "Email",
                      controller: emailController,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    ShadowedTextfield(
                      hintText: "Password",
                      isPassword: true,
                      controller: passwordController,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    ShadowedTextfield(
                      hintText: "Confirm password",
                      isPassword: true,
                      controller: confirmPasswordController
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
                        "SIGN UP",
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
                          "Already have account?",
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
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("Log in",
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
