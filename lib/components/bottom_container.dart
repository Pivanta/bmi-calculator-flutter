import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomContainer extends StatelessWidget {
  final Function onTap;
  final String buttonTitle;
  const BottomContainer({@required this.onTap, @required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        color: kBottomContainerColor,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            buttonTitle,
            style: kBottomContainerText,
          ),
        ),
      ),
    );
  }
}
