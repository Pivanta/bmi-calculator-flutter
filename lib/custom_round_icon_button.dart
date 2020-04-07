import 'package:flutter/material.dart';

// Custom RawMaterialButton
class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPress;

  const RoundIconButton({@required this.icon, @required this.onPress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
        color: Colors.grey,
      ),
      onPressed: onPress,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      fillColor: Color(0xFF111328),
      shape: CircleBorder(),
    );
  }
}
