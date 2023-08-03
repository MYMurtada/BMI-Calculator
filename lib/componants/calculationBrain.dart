import 'dart:io';
import 'dart:math';

class calculationBrain {
  calculationBrain({required this.weight, required this.height});

  final int height;
  final int weight;

  double _BMI = 0.0;

  String calculateBMI() {
    _BMI = weight / pow(height / 100, 2);
    return _BMI.toStringAsFixed(1);
  }

  String getStatus() {
    if (_BMI >= 25) {
      return "OVERWEIGHT";
    } else if (_BMI > 18.5) {
      return "NORMAL";
    } else {
      return "UNDERWEIGHT";
    }
  }

  String getInterpretation() {
    if (_BMI >= 25) {
      return "You need to play more sports and eat healthy food!";
    } else if (_BMI > 18.5) {
      return "You have a normal body weight. Good job!";
    } else {
      return "You need to eat more and choose a healthy food!";
    }
  }
}
