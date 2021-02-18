import 'package:flutter/material.dart';


class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild});

  //makes this immutable
  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),

//if you have decoration, put color there
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(
          (10.0),
        ),
      ),
    );
  }
}
