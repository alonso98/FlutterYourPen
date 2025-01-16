import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  primaryColor: const Color(0xff8545D8),
  scaffoldBackgroundColor: const Color(0xffFAF7FF),
  fontFamily: "Raleway",
  appBarTheme: const AppBarTheme(
    titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w600, color:  Color(0xff8545D8)),
    iconTheme: IconThemeData(color: Color(0xff8545D8))
  ),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
    headlineLarge: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)
  ),
  navigationBarTheme: const NavigationBarThemeData(
    backgroundColor: Color(0xffFAF7FF),
  )

  // filledButtonTheme: FilledButtonThemeData(
  //   style: ButtonStyle()
  // )

  // Define your primary and accent colors
  // primaryColor: Colors.teal,
  // accentColor: Colors.amber,

  // // Define the default brightness and colors
  // brightness: Brightness.light,
  // backgroundColor: Colors.white,

  // Define the default font family
  // fontFamily: 'Roboto',

  // Define the default TextTheme
  // textTheme: TextTheme(
  //   headline1: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.teal),
  //   bodyText1: TextStyle(fontSize: 16.0, color: Colors.black87),
  //   // Add other text styles as needed
  // ),

  // Define the default ElevatedButton style
  // elevatedButtonTheme: ElevatedButtonThemeData(
  //   style: ElevatedButton.styleFrom(
  //     primary: Colors.teal, // Background color
  //     onPrimary: Colors.white, // Text color
  //     textStyle: TextStyle(fontSize: 18.0),
  //   ),
  // ),

  // Customize other components like AppBar, InputDecoration, etc.
  // appBarTheme: AppBarTheme(
  //   color: Colors.teal,
  //   textTheme: TextTheme(
  //     headline6: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),
  //   ),
  //   iconTheme: IconThemeData(color: Colors.white),
  // ),

  // inputDecorationTheme: InputDecorationTheme(
  //   border: OutlineInputBorder(),
  //   focusedBorder: OutlineInputBorder(
  //     borderSide: BorderSide(color: Colors.teal),
  //   ),
  //   labelStyle: TextStyle(color: Colors.teal),
  // ),
);
