import 'package:bmi_calculator/Calculator_brain.dart';
import 'package:flutter/material.dart';
import '../components/BottomButton.dart';
import '../constants.dart';
import 'file:///C:/Users/sarah/AndroidStudioProjects/bmi-calculator-flutter/lib/components/Reusable_Card.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({this.results, this.resultText, this.inter});

  final String results;
  final String resultText;
  final String inter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: KTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
                colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText,
                    style: kResultTextStyle,
                  ),
                  Text(
                    results,
                    style: kNumTextStyle.copyWith(
                      fontSize: 80.0
                    ),
                  ),
                  Text(
                    inter,
                    style: kLabelTextStyle,
                  ),
                ],
              ),
            ),
          ),
          ButtomButton(
            onPressed: (){

                Navigator.pushNamed(context, '/');
            },
            title: 'RE-CALCULATE',
          )
        ],
      ),
    );
  }
}
