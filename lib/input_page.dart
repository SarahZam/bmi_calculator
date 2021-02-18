import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Icon_Content.dart';
import 'Reusable_Card.dart';


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

const bottomContainerHeight = 60.0;
const activecardcolor = Color(0xff1D1E33);
const bottomContainerColor = Color(0xFFEB1559);

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  colour: activecardcolor,
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.mars,
                    label: 'MALE',
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: activecardcolor,
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                  ),
                ),
              )
            ],
          )),
          Expanded(child: ReusableCard(colour: activecardcolor)),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: ReusableCard(colour: activecardcolor)),
                Expanded(child: ReusableCard(colour: activecardcolor))
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}

