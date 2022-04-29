import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flash_chat/components/rounded_button.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';
import 'registration_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );

    // animation =
    //     new CurvedAnimation(parent: controller, curve: Curves.decelerate);

    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white)
        .animate(controller);

    controller.forward();

    // animation.addStatusListener((status) {
    //   if (status == AnimationStatus.completed) {
    //     controller.reverse(from: 1.0);
    //   } else if (status == AnimationStatus.dismissed) {
    //     controller.forward();
    //   }
    // });

    controller.addListener(() {
      setState(() {});
      // print(animation.value);
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var children2 = <Widget>[
      Row(
        children: <Widget>[
          Flexible(
            child: Hero(
              tag: 'logo',
              child: Container(
                child: Image.asset('images/logo.png'),
                height: 60.0,
              ),
            ),
          ),
          TypewriterAnimatedTextKit(
            text: ['Flash Chat'],
            speed: Duration(milliseconds: 200),
            textStyle: TextStyle(
              fontSize: 45.0,
              color: Colors.black,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
      SizedBox(
        height: 48.0,
      ),
      RoundedButton(
        title: 'Log In',
        color: Colors.lightBlueAccent,
        onPressed: () {
          Navigator.pushNamed(context, LoginScreen.id);
        },
      ),
      RoundedButton(
        title: 'Register',
        onPressed: () {
          //Go to registration screen.
          Navigator.pushNamed(context, RegistrationScreen.id);
        },
        color: Colors.blueAccent,
      ),
    ];
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: children2,
        ),
      ),
    );
  }
}
