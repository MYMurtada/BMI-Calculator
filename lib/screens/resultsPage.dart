import 'package:bmi_calculator/componants/ReusableCard.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/componants/constans.dart';
import 'package:bmi_calculator/componants/bottomButton.dart';

class resultsPage extends StatelessWidget {
  resultsPage(
      {required this.interpertation,
      required this.result,
      required this.status});

  final String status;
  final String result;
  final String interpertation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: SafeArea(
        child: Expanded(
          child: Column(
            children: [
              Text(
                "Your Result",
                style: kMainTextStyle,
              ),
              Expanded(
                  flex: 9,
                  child: ReusableCard(
                    colour: kIdealButtonsColor,
                    child: Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 80.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              status,
                              textAlign: TextAlign.center,
                              style: kMainTextStyle.copyWith(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.w600,
                                  color: status.endsWith("T")
                                      ? Colors.red[300]
                                      : Colors.green[300]),
                            ),
                            Text(
                              result,
                              textAlign: TextAlign.center,
                              style: kMainTextStyle.copyWith(
                                  fontSize: 100.0, fontWeight: FontWeight.bold),
                            ),
                            Column(
                              children: [
                                Text(
                                  "Normal BMI range:",
                                  textAlign: TextAlign.center,
                                  style: kLabelTextStyle,
                                ),
                                Text(
                                  "18.5 - 25 Kg/m2",
                                  textAlign: TextAlign.center,
                                  style: kMainTextStyle.copyWith(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Text(
                              interpertation,
                              textAlign: TextAlign.center,
                              style: kMainTextStyle.copyWith(
                                  fontSize: 18.0, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "SAVE RESULTS",
                              textAlign: TextAlign.center,
                              style: kMainTextStyle.copyWith(
                                  fontSize: 18.0, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )),
              Expanded(
                  child: bottomButton(
                label: "START AGAIN",
                onTap: () {
                  Navigator.pop(context);
                },
              )),
            ],
          ),
        ),
      ),
    );
  }
}
