import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import '../components/reusable_content.dart';
import '../constants.dart';
import '../components/bottom_container.dart';
import 'input_page.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final Widget resultText;
  final String interpretation;

  ResultPage({this.bmiResult, this.resultText, this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              // Margin moves the whole container and padding moves the text.
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Results',
                style: kResultTextTop,
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  resultText,
                  SizedBox(
                    height: 60.0,
                  ),
                  Text(
                    bmiResult,
                    style: kResultTextOutputBmi,
                  ),
                  SizedBox(
                    height: 60.0,
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: kResultTextOutput,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomContainer(
            buttonTitle: 'RE-CALCULATE',
            onTap: () {
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

/*enum BmiCategory {
  overweight,
  normal,
  underweight,
}

class _ResultPageState extends State<ResultPage> {
  BmiCategory bmiCategory;
  String textWeight = "OVERWEIGHT";
  String textNormal = 'NORMAL';
  bool pressed;

  Color checkB(BmiCategory bmiCategory) {
    if (bmiCategory == BmiCategory.overweight) {
      return overWeightColor;
    } else {
      return normalColor;
    }
  }*/
