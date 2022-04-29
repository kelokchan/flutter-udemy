import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class FooterButton extends StatelessWidget {
  final Function onPress;
  final String title;

  FooterButton({@required this.onPress, @required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        color: kAccentColor,
        margin: EdgeInsets.only(top: 15.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBbottomContainerHeight,
        child: Center(
          child: Text(
            title,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
