
import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon, this.onPressed});
  final IconData icon;
  Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
        color: Colors.white60,
      ),
      onPressed: onPressed,
      shape: CircleBorder(),
      disabledElevation: 6.0,
      fillColor: Color(0xFF4C4F5C),
      constraints: BoxConstraints.tightFor(width: 50.0, height: 50.0),
    );
  }
}
