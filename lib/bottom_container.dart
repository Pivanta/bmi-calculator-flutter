import 'package:flutter/material.dart';
import 'constants.dart';
import 'input_page.dart';

class BottomContainer extends StatelessWidget {
  final Function routes;
  const BottomContainer({@required this.routes});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: routes,
      child: Container(
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        color: kBottomContainerColor,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            'RE-CALCULATE',
            style: kBottomContainerText,
          ),
        ),
      ),
    );
  }
}
