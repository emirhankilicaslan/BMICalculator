import 'dart:core';

import 'dart:math';

import 'package:flutter/material.dart';

import 'screens/result_page.dart';

class Calculator extends StatelessWidget {
  Calculator({required this.weight, required this.height});

  final int weight;
  final int height;

  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return ResultPage(
      bmiScore: calculateBMI(),
      interpretation: getInterpretation(),
      result: getResult(),
    );
  }
}
