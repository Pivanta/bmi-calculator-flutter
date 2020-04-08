import 'dart:math';

import 'package:bmi_calculator/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorBrain extends StatelessWidget {
  final int height;
  final int weight;
  final Color color;
  final String bmiUpperText;

  double _bmi;

  CalculatorBrain({this.height, this.weight, this.color, this.bmiUpperText});

  @override
  Widget build(BuildContext context) {
    return Text(
      bmiUpperText,
      style: TextStyle(color: color, fontSize: 24.0, fontWeight: FontWeight.bold),
    );
  }

  // ONCE YOU HAVE ASSIGNED A DOUBLE TYPE VALUE WHICH IS A INSTANCE VARIABLE DO NOT ASSIGN THE TYPE DOUBLE AGAIN...
  // IN THE METHOD AS THE APP WILL CRASH LIKE DOUBLE _BMI;
  String calculateBmi() {
    // DO NOT ASSIGN DOUBLE _BMI AGAIN example double _bmi = weight / pow(height / 100, 2);
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  Widget getResults() {
    if (_bmi > 25) {
      return CalculatorBrain(color: Colors.red, bmiUpperText: 'OVERWEIGHT');
    } else if (_bmi >= 18.5) {
      return CalculatorBrain(color: Colors.green, bmiUpperText: 'NORMAL');
    }
    return CalculatorBrain(color: Colors.amber, bmiUpperText: 'UNDERWEIGHT');
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to excercide more.';
    } else if (_bmi > 18.5) {
      return 'You have normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}


