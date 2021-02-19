

import 'dart:math';

class CalculatorBrain{

  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;
  double bmi;


  String calculateBMI(){
    bmi  = weight / pow(height/100, 2);

    return bmi.toStringAsFixed(1);
  }

  String getResults(){
    if(bmi>=25){
      return 'Overweight';
    }
    else if (bmi> 18.5 && bmi<25){
      return 'Normal';
    }
    else{
      return 'Underweight';
    }
  }

  String extra(){
    if(bmi>=25){
      return 'Get slimmer';
    }
    else if (bmi> 18.5 && bmi<25){
      return 'u ok';
    }
    else{
      return 'eat more';
    }
  }
}