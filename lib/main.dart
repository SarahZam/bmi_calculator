import 'file:///C:/Users/sarah/AndroidStudioProjects/bmi-calculator-flutter/lib/screens/result_page.dart';
import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

//main dart contains a lot of theming - name of app and theme of app
class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff02031C),
        scaffoldBackgroundColor: Color(0xff01061F),
        textTheme: TextTheme(
            body1: TextStyle(color: Colors.white)
        ),

      ),
      initialRoute: '/',
      routes: {
        '/' : (context) => InputPage(),
        '/calculate' : (context) => ResultsPage(),

      },
    );
  }
}

