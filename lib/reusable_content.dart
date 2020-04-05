import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  // Values not assigned to the variable color which is Color type.
  final Color color;
  final Widget cardChild;
  // Function onPress is called passing a function. Meaning we are passing that function to input_page
  final Function onPress;

  ReusableCard({@required this.color, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
// Added gestureDetector in ReusableCard by passing a function on tap.
