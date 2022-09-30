import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(MaterialApp(
    title: "BMI calculator",
    home: const MyHome(title: 'BMI CALCULATOR'),
    theme: ThemeData.dark().copyWith(
      appBarTheme: const AppBarTheme(backgroundColor: Color(0xFF090C22)),
      scaffoldBackgroundColor: const Color(0xFF090C22),
        textTheme: const TextTheme(
            bodyMedium: TextStyle(
              fontFamily: 'Nunito',
            ),
            labelLarge: TextStyle(
              fontFamily: 'Nunito',
            ),
            displayLarge: TextStyle(
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w800,
              fontSize: 54,
            )),
        sliderTheme: SliderThemeData(
          activeTrackColor: Colors.white,
          inactiveTrackColor: Colors.white.withOpacity(.4),
          thumbColor: const Color(0xFFEA1556),
          thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 14),
          trackHeight: 2,
          overlayColor: const Color(0xFF311330).withOpacity(.6),
        ),
      colorScheme: ColorScheme.fromSwatch(
        accentColor: const Color(0xFFEA1556),
        cardColor: const Color(0xFF101427),
      )
    ),
  ));
}


