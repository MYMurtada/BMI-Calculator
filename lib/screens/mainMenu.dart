import 'package:bmi_calculator/componants/constans.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/screens/input_page.dart';
import 'package:bmi_calculator/componants/ReusableCard.dart';
import 'package:flutter_launcher_icons/constants.dart';

class mainMenu extends StatefulWidget {
  const mainMenu({super.key});

  @override
  State<mainMenu> createState() => _mainMenuState();
}

class _mainMenuState extends State<mainMenu> {
  Color startColor = kIdealButtonsColor;
  Color unitColor = kIdealButtonsColor;
  String mode = "kg - cm";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "BMI CALCULATOR",
              textAlign: TextAlign.center,
            ),
          ),
        ),
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/icons/icon.png"),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => InputPage()));
                      },
                      child: ReusableCard(
                          colour: startColor,
                          child: Text(
                            "START",
                            textAlign: TextAlign.center,
                            style: kMainTextStyle,
                          ))),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
