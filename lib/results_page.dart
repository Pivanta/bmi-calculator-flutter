import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'reusable_content.dart';
import 'constants.dart';
import 'input_page.dart';
import 'bottom_container.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          'Your Result',
          style: TextStyle(fontSize: 45.0, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'OVERWEIGHT',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(
                    height: 60.0,
                  ),
                  Text(
                    '30.0',
                    style: TextStyle(
                      fontSize: 70.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 60.0,
                  ),
                  Container(
                    margin: EdgeInsets.all(30.0),
                    child: Text(
                      'You ahve a hiogher normal weoght than other please take escersise and dring loads of water',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomContainer(
            routes: () {
              Navigator.pop(
                context,
                MaterialPageRoute(builder: (context) {
                  return InputPage();
                }),
              );
            },
          ),
        ],
      ),
    );
  }
}
