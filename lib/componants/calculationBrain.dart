class calculationBrain {
  calculationBrain(
      {required this.weight, required this.height, required this.BMI});

  final int height;
  final int weight;
  final double BMI;

  String calculateBMI() {
    return BMI.toStringAsFixed(1);
  }

  String getStatus() {
    if (BMI >= 25) {
      return "OVERWEIGHT";
    } else if (BMI > 18.5) {
      return "NORMAL";
    } else {
      return "UNDERWEIGHT";
    }
  }

  String getInterpretation() {
    if (BMI >= 25) {
      return "You need to play more sports and eat healthy food!";
    } else if (BMI > 18) {
      return "You have a normal body weight. Good job!";
    } else {
      return "You need to eat more and choose a healthy food!";
    }
  }
}
