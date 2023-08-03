import 'package:flutter/material.dart';
import 'package:bmi_calculator/componants//constans.dart';

class bottomButton extends StatelessWidget {
  bottomButton({required this.label, required this.onTap});

  final String label;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          child: Center(
            child: Text(
              label,
              style: kMainTextStyle.copyWith(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff393646)),
            ),
          ),
          color: kBottomBarColor,
          width: double.infinity,
          height: bottomBarHeight,
        ));
  }
}
