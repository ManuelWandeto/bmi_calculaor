import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(MaterialApp(
    title: "BMI calculator",
    home: const MyHome(title: 'BMI CALCULATOR'),
    theme: ThemeData.dark().copyWith(
      appBarTheme: const AppBarTheme(backgroundColor: Color(0xFF090C22)),
      scaffoldBackgroundColor: const Color(0xFF090C22),
      textTheme: TextTheme(
        bodyText2: const TextStyle(fontFamily: 'Nunito'), 
        labelLarge: const TextStyle(fontFamily: 'Nunito')),
      colorScheme: ColorScheme.fromSwatch(
        accentColor: const Color(0xFFEA1556),
        cardColor: const Color(0xFF101427),
      )
    ),
  ));
}


