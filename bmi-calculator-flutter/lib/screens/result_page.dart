import 'package:bmi_calculator/components/index.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/main.dart';
import 'package:flutter/material.dart';
import 'package:sailor/sailor.dart';

class ResultPageArgs extends BaseArguments {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  ResultPageArgs({
    @required this.bmiResult,
    @required this.resultText,
    @required this.interpretation,
  });
}

class ResultPage extends StatelessWidget {
  final ResultPageArgs args;

  ResultPage(this.args);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    this.args.resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    this.args.bmiResult,
                    style: kBmiTextStyle,
                  ),
                  Text(
                    this.args.interpretation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          FooterButton(
            title: 'RE-CALCULATE',
            onPress: Routes.sailor.pop,
          )
        ],
      ),
    );
  }
}
