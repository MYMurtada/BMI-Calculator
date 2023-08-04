import 'dart:math';

import 'package:bmi_calculator/screens/resultsPage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../componants/IconContent.dart';
import '../componants/ReusableCard.dart';
import 'package:bmi_calculator/componants//constans.dart';
import '../componants/bottomButton.dart';
import 'package:bmi_calculator/componants//roundIconButton.dart';
import 'package:bmi_calculator/componants/calculationBrain.dart';

// enmus
enum Gender { male, female, none }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.none;

  int height = 180;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: SafeArea(
        child: Expanded(
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedGender = Gender.male;
                          });
                        },
                        child: ReusableCard(
                          colour: selectedGender == Gender.male
                              ? kClickedButtonColor
                              : kIdealButtonsColor,
                          child: IconContent(
                            icon: FontAwesomeIcons.mars,
                            text: "MALE",
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedGender = Gender.female;
                          });
                        },
                        child: ReusableCard(
                          colour: selectedGender == Gender.female
                              ? kClickedButtonColor
                              : kIdealButtonsColor,
                          child: IconContent(
                            icon: FontAwesomeIcons.venus,
                            text: "FEMALE",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: kIdealButtonsColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "HEIGHT",
                        style: kLabelTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(height.toString(), style: kMainTextStyle),
                          Text(
                            "cm",
                            style: kLabelTextStyle,
                          ),
                        ],
                      ),
                      Slider(
                          value: height.toDouble(),
                          min: 120.0,
                          max: 220.0,
                          activeColor: kBottomBarColor,
                          inactiveColor: Color(0xff0E8388),
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue.round();
                            });
                          })
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: ReusableCard(
                        colour: kIdealButtonsColor,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "WEIGHT",
                              style: kLabelTextStyle,
                            ),
                            Text(
                              weight.toString(),
                              style: kMainTextStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundIconButton(
                                  icon: Icons.horizontal_rule,
                                  onPress: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                ),
                                RoundIconButton(
                                  icon: Icons.add,
                                  onPress: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: ReusableCard(
                        colour: kIdealButtonsColor,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "AGE",
                              style: kLabelTextStyle,
                            ),
                            Text(
                              age.toString(),
                              style: kMainTextStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundIconButton(
                                  icon: Icons.horizontal_rule,
                                  onPress: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                ),
                                RoundIconButton(
                                  icon: Icons.add,
                                  onPress: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                child: bottomButton(
                  label: "CALCULATE",
                  onTap: () {
                    double bmi = (weight / pow(height / 100, 2));
                    calculationBrain result = calculationBrain(
                        weight: weight, height: height, BMI: bmi);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => resultsPage(
                                interpertation: result.getInterpretation(),
                                result: result.calculateBMI(),
                                status: result.getStatus())));
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
