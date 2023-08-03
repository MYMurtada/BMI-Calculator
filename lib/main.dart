import 'package:bmi_calculator/screens/mainMenu.dart';
import 'package:bmi_calculator/screens/resultsPage.dart';
import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(color: Color(0xff2E4F4F), elevation: 0.0),
        primaryColor: Color(0xff2E4F4F),
        scaffoldBackgroundColor: Color(0xff2E4F4F),
      ),
      home: mainMenu(),
    );
  }
}
